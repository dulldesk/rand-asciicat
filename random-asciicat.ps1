random (((cat $PSScriptRoot\asciicat.txt -encoding utf8).replace("`r","`n") -join "`n") -split "`n{2,}")
