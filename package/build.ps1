param (
    [string]$ProjectName,
    [string]$Version
)

msbuild /t:Restore,Pack $ProjectName /p:Version=$Version /p:targetFrameworks='"net5.0;netstandard2.0;"' /p:Configuration=Release /p:PackageOutputPath=..\..\package /verbosity:minimal