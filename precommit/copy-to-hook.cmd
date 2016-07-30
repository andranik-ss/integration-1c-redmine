@echo off

@echo copy current version repo

xcopy .\ibService .\..\.git\hooks\ibService\ /Y /E /F
xcopy .\scripts .\..\.git\hooks\scripts\ /Y /E /F
xcopy .\pre-commit .\..\.git\hooks\ /Y /F
xcopy .\v8files-extractor.os .\..\.git\hooks\ /Y /F

mkdir .\..\.git\hooks\v8Reader
xcopy .\v8Reader\V8Reader.epf .\..\.git\hooks\v8Reader\ /Y /F

mkdir .\..\.git\hooks\tools
xcopy .\tools\v8unpack.exe .\..\.git\hooks\tools\ /Y /F

cd .\..\

echo storage localization to use Cyrillic characters
git config --local core.quotepath false

echo init used submodules
git submodule update --init --recursive


