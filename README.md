# rand-asciicat
PowerShell script to print a random ASCII cat

## Usage
1. Download both `random-asciicat.ps1` and `asciicat.txt` and place them in the same folder (or clone this repo). 
2. Run `random-asciicat.ps1` in a terminal. You may need to change PowerShell's `ExecutionPolicy` (see [this Gist for instructions](https://gist.github.com/dulldesk/65f9ec8c6869e71044929a5013349d60))

## Format
The asciicats must be separated by exactly one (1) line. No more than one (1) line may exist at the end of the file. 

Feel free to make a pull request to add more asciicats!

## Why?
I wanted an ASCII cat to appear when I started PowerShell. 

In accomplishing this, (part of) my PowerShell profile file looks like this:
```
iex $PSScriptRoot\rand-asciicat\random-asciicat.ps1
write ''
```
In this case, the location of the asciicat script relative to the profile is `.\rand-asciicat\random-asciicat.ps1`. 

### PowerShell profiles?

*In essence*, a PowerShell profile runs every time a PowerShell console is launched. Learn more about PowerShell profiles at the [Microsoft Docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles) and at [Microsoft's DevBlogs](https://devblogs.microsoft.com/scripting/understanding-the-six-powershell-profiles/). 

*Some of the profile locations between the two links conflict. Use the following PowerShell Variables (`echo $var` in a console) to determine the location of the desired profile:*

*User ↓ \ Host →* | All | Current
------------------:|:---:|:------------:
**All** | `$Profile.AllUsersAllHosts` | `$Profile.AllUsersCurrentHost` 
**Current** | `$Profile.CurrentUsersAllHosts` | `$Profile.CurrentUserCurrentHost` 


