function sequence = getgenbank(accession,varargin)
%GETGENBANK - Retrieve a cached sequence during genetics smoke tests
%   SEQUENCE = GETGENBANK(ACCESSION,...) retrieves the test fixture for
%   ACCESSION. This test double supports SequenceOnly=true calls.

assert(numel(varargin) == 2 && strcmpi(varargin{1},"SequenceOnly") ...
    && isequal(varargin{2},true),"GeneticsTests:UnsupportedRequest", ...
    "The fixture supports only SequenceOnly=true.")
folder = getenv("GENETICS_FIXTURE_FOLDER");
assert(~isempty(folder),"GeneticsTests:FixtureNotActive", ...
    "The GenBank fixture is available only during a smoke test.")
data = load(fullfile(folder,"genbank.mat"),"sequences");
key = matlab.lang.makeValidName(string(accession));
assert(isfield(data.sequences,key),"GeneticsTests:UnknownAccession", ...
    "No fixture exists for accession %s.",accession)
sequence = data.sequences.(key);
end
