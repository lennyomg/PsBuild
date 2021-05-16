# PsBuild

A few MSBuild targets to run a PowerShell script after building your projects. 

## Getting started

Download the [latest release](https://github.com/lennyomg/PsBuild/releases/latest) and copy the targets and props files to the root folder that contains your source. [How it works](https://docs.microsoft.com/en-us/visualstudio/msbuild/customize-your-build#directorybuildprops-and-directorybuildtargets).

PsBuild.targets creates and runs the PS1 script at `<SolutionDir>\.vs\<SolutionFileName>.ps1`. and redirects PowerShell output to Visual Studio Output window. Use the link in the Properties folder for quick access to the script. 

## Scripts

A basic PS1 script might look like below. There are [more samples](https://github.com/lennyomg/PsBuild/wiki/Additional-code-samples), including copying files and accessing remote machines.

```powershell
# return
	
switch($env:ProjectName)
{
    "Project1" { "$_ : $env:TargetFramework : $env:TargetDir"  }
    "Project2" { dir env: }
  # "Project3" { }
}
```
