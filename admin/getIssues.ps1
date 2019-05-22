# $issues = Invoke-RestMethod -Uri http://api.github.com/repos/Zuehlke/machines-code-people/issues?labels=article&per_page=100 -Method Get 
$issues = Get-Content -Raw -Path issues.json | ConvertFrom-Json
foreach ($issue in $issues) {
    $id = $issue.number
    $author = $issue.assignee.login
    $title = $issue.title
    $labels = @()
    foreach ($label in $issue.labels) {
        $labels += $label.name
    }
    Write-Host $id";"$title";"$author";"($labels -join ",")
}