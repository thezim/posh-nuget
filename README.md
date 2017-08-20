# posh-nuget

## Description
A PowerShell module for adding assemblies from NuGet.

## Motivation
Sometimes you need to deploy a script but don't want to have to deploy with a dependancy assembly. This module will download the desired NuGet package and load the desired assembly, all in memory without have to write a file to disk.

## Installation

1. Open a PowerShell prompt.
2. Run `git clone https://github.com/thezim/posh-nuget`
3. Run `cd posh-nuget`
4. Run `.\install.ps1`

## Usage

Import the PowerShell Module.
``` powershell
Import-Module -Name posh-nuget
```
Add assembly from NuGet.
```powershell
Add-TypeFromNuGet -Package EPPlus -Library "lib/net40/EPPlus.dll"
```
Get contents of NuGet package.
```powershell
Get-NugetPackage -Package EPPlus
```
## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request.

## Credits
[Project Contributors](https://github.com/thezim/posh-nuget/graphs/contributors)

## Links
[NuGet](https://www.nuget.org)

## License
The MIT License (MIT)

Copyright (c) 2015

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.