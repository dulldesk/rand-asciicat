get-random (((get-content $PSScriptRoot\asciicat.txt -encoding utf8).replace("`r","`n") -join "`n") -split "`n{2,}")
