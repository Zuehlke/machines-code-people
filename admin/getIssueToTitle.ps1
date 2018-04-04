Get-ChildItem "../articles" -Filter *.md | 
Foreach-Object {
    $issue = Get-Content $_.FullName | Select-String -Pattern "(Issue: )(\d*)"
    if ($issue -ne $null) {
        $issue = $issue.Matches.Groups[2].Value
        $title = Get-Content $_.FullName | Select-String -Pattern "(title: )(.*)"
        $title = $title.Matches.Groups[2].Value
        Write-Host $issue";"$title
    }

}