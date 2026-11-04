function cleanup = SetupGeneticsTestEnvironment(mode)
%SetupGeneticsTestEnvironment - Prepare isolated genetics smoke-test data
%   CLEANUP = SetupGeneticsTestEnvironment(MODE) installs deterministic
%   mock data for "mock", or cached downloaded data for "cached".
%   Clearing CLEANUP restores paths, random state, and local data.
%
%   See also onCleanup

root = string(currentProject().RootFolder);
state = struct;
state.Path = path;
state.Rng = rng;
state.FixtureFolderBefore = getenv("GENETICS_FIXTURE_FOLDER");
state.Figures = findall(groot,"Type","figure");
fixtureFolder = string(tempname);
mkdir(fixtureFolder)
dataFile = fullfile(root,"Data","primates.mat");
hadData = isfile(dataFile);
state.Folder = fixtureFolder;
state.DataFile = dataFile;
state.HadData = hadData;
if hadData
    copyfile(dataFile,fullfile(fixtureFolder,"originalPrimates.mat"))
end
cleanup = onCleanup(@() restoreEnvironment(state));
rng(1729,"twister")

if mode == "mock"
    accessions = ["NC_000891","NC_003321","X90314","NC_000934", ...
        "NC_003428","NC_004920","NC_001700","NC_005797"];
    bases = 'ACGT';
    common = bases(randi(4,1,768));
    sequences = struct;
    for index = 1:numel(accessions)
        sequence = common;
        positions = randperm(numel(sequence),40 + 8*index);
        sequence(positions) = bases(randi(4,1,numel(positions)));
        sequences.(matlab.lang.makeValidName(accessions(index))) = sequence;
    end
    save(fullfile(fixtureFolder,"genbank.mat"),"sequences")
    primates = struct("Header",{},"Sequence",{});
    names = {'Human','Chimpanzee','Gorilla','Orangutan'};
    for index = 1:numel(names)
        primates(index).Header = names{index};
        primates(index).Sequence = sequences.( ...
            matlab.lang.makeValidName(accessions(index)));
    end
    save(dataFile,"primates")
elseif mode == "cached"
    assert(hadData,"GeneticsTests:MissingRealData", ...
        "Download Data/primates.mat before cached validation.")
    source = fullfile(root,"Data","genbank.mat");
    assert(isfile(source),"GeneticsTests:MissingRealData", ...
        "Run DownloadGeneticsData before cached validation.")
    copyfile(source,fullfile(fixtureFolder,"genbank.mat"))
else
    error("GeneticsTests:InvalidMode","Use mock or cached mode.")
end
setenv("GENETICS_FIXTURE_FOLDER",fixtureFolder)
addpath(fullfile(root,"SoftwareTests","Fixtures","GenBank"),"-begin")

end

function restoreEnvironment(state)
path(state.Path)
rng(state.Rng)
setenv("GENETICS_FIXTURE_FOLDER",state.FixtureFolderBefore)
newFigures = setdiff(findall(groot,"Type","figure"),state.Figures);
delete(newFigures)
if state.HadData
    copyfile(fullfile(state.Folder,"originalPrimates.mat"),state.DataFile)
elseif isfile(state.DataFile)
    delete(state.DataFile)
end
if startsWith(state.Folder,string(tempdir)) && isfolder(state.Folder)
    rmdir(state.Folder,"s")
end
end
