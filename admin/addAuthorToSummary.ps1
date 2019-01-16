$titles = Get-Content .\titles.txt -encoding Unicode
$authors = Get-Content .\authors.txt -encoding Unicode
$summary = Get-Content ..\SUMMARY.md -encoding Unicode

foreach ($summaryLine in $summary) {
    $i = 0;
    $replaced = $FALSE;
    foreach ($title in $titles) {
        if ($summaryLine.Contains($title)) {
            Write-Host $summaryLine.Replace($title, $title + " (" + $authors[$i] + ")")
            $replaced = $TRUE;
        }
        $i++;
    }
    if (-Not $replaced) {
        Write-Host "-- " $summaryLine
    }
}