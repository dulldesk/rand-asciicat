# rand-asciicat
PowerShell script to print a random ASCII cat

## Installation
1. Download both `random-asciicat.ps1` and `asciicat.txt` and place them in the same folder (or clone this repo). 
2. Run `random-asciicat.ps1`. You may need to change PowerShell's `ExecutionPolicy` (see [this Gist for instructions](https://gist.github.com/dulldesk/65f9ec8c6869e71044929a5013349d60))

## Format
The asciicats must be separated by a newline. No more than one line may exist at the end of the file. 

Note that some of the cats are not ASCII cats, but UTF-8 cats.

Open for PRs. 

## Some Usages
This script can be called in the PowerShell profile file, so that when PowerShell is launched, an ASCII cat will appear. 

For example, the following lines can be added to one's PowerShell profile: 
```
& "$PSScriptRoot\rand-asciicat\random-asciicat.ps1"
echo ''
```
In this case, the location of the asciicat script relative to the profile is `.\rand-asciicat\random-asciicat.ps1`. 

### On PowerShell profiles

*In essence*, a PowerShell profile runs every time a PowerShell console is launched. Learn more about PowerShell profiles at the [Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles) and at [Microsoft's DevBlogs](https://devblogs.microsoft.com/scripting/understanding-the-six-powershell-profiles/). 

*Some of the profile locations between the two links conflict. Use the following PowerShell Variables (`echo $var` in a console) to determine the location of the desired profile:*

*User ↓ \ Host →* | All | Current
------------------:|:---:|:------------:
**All** | `$Profile.AllUsersAllHosts` | `$Profile.AllUsersCurrentHost` 
**Current** | `$Profile.CurrentUsersAllHosts` | `$Profile.CurrentUserCurrentHost` 

