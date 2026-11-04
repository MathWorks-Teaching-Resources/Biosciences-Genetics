# Genetics validation

Open `BiosciencesGenetics.prj`, then run `buildtool test`. The smoke suite
runs all four learner scripts and solutions with deterministic offline
GenBank fixtures, a synthetic primates dataset, and a fixed random seed.
The temporary primates file is removed afterward; any existing local
download is backed up and restored even when a test fails. Fixture functions
are added to the MATLAB path only for the duration of a test.

Learner exercise blocks remain blank. Pre-hooks record only confirmed
intentional errors by their exact MATLAB identifier. Solution hooks never
whitelist errors. Results are written under ignored `public/<release>/`.

Confirmed learner exercise errors are `MATLAB:UndefinedFunction` for S1's
blank `RNAbases` definition and `bioinfo:seqlinkage:InvalidNamesStruct` for
S2's blank echidna `Header`. These learner runs stop at those errors; all
four completed solution scripts are exercised to completion.

For real-data validation, run:

```matlab
addpath("InternalFiles")
DownloadGeneticsData
setenv("GENETICS_VALIDATION_MODE","cached")
results = runtests("SoftwareTests/CoursewareSmokeTests.m");
setenv("GENETICS_VALIDATION_MODE","")
table(results)
```

The download helper caches real sequences and `primates.mat` in ignored
`Data/`. Cached validation executes the same calculations using those real
records without repeated network requests. Ordinary learner execution still
retrieves sequences directly from GenBank. Mock sequences exercise the APIs;
they do not validate biological conclusions.

Run `CheckExternalLinks` manually with the project open to write the ignored
`InternalFiles/ExternalLinkHealth.md` report. Network link checks are excluded
from CI. Review failures and unexpected redirects before updating links.
