
# Environment.GitHub

To setup a new build create a new AppVeyor project and set the 'Custom configuration .yml file name' parameter to:
https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/Default.yml

AppVeyor will build, test, package (nuget) and update the GitHub ReadMe.md. Create a ReadMe.content.md with your previous readme. The build will merge them together. Planned features are:
- Readme.template.md with
  * syntax for embedding other md file content 
  * syntax for defining environment variables
  * syntax for embedding / invoking web powershell scripts that generate custom content
