# BuildStatus for Build 1.0.37

[![Build status](https://img.shields.io/appveyor/ci/TFTomSun/environment-github.svg)](https://ci.appveyor.com/project/TFTomSun/environment-github) 
[![Test status](https://img.shields.io/appveyor/tests/TFTomSun/environment-github.svg)](https://ci.appveyor.com/project/TFTomSun/environment-github/build/tests)
[![NuGet](https://img.shields.io/nuget/v/TomSun.Environment.GitHub.svg?style=flat-square)](https://www.nuget.org/packages/TomSun.Environment.GitHub/) 
[![NuGet Dowloads](https://img.shields.io/nuget/dt/TomSun.Environment.GitHub.svg)](https://www.nuget.org/packages/TomSun.Environment.GitHub/) 

# Environment.GitHub

Important! The one click build setup works currently only in my environment. It is planned to make it common enough to be reusable in other projects.

setup a new build 
* Important! In case you have already a ReadMe.md file, copy your Readme.md content to Readme.content.md. The build will overwrite the ReadMe.md file.
* create a new AppVeyor project
* set the 'Custom configuration .yml file name' parameter to:
https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/Default.yml

AppVeyor will build, test, package (nuget) and update the GitHub ReadMe.md. 

Create a ReadMe.content.md with your previous readme. The build will merge them together. Planned features are:
- Readme.template.md with
  * syntax for embedding other md file content 
  * syntax for defining environment variables / place holder variables
  * syntax for embedding / invoking web powershell scripts that generate custom content
