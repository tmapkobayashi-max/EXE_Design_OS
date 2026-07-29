[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$DeckPath,

    [Parameter(Mandatory = $true)]
    [ValidateRange(1, 100)]
    [int]$SlideCount,

    [string]$OutputDirectory = "out"
)

$edgeCandidates = @(
    "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
    "C:\Program Files\Microsoft\Edge\Application\msedge.exe"
)
$edgePath = $edgeCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1

if (-not $edgePath) {
    throw "Microsoft Edge が見つかりません。Edgeをインストールするか、スクリプト内の候補パスを確認してください。"
}

$resolvedDeck = (Resolve-Path -LiteralPath $DeckPath).Path
$resolvedOutput = Join-Path (Get-Location) $OutputDirectory
New-Item -ItemType Directory -Path $resolvedOutput -Force | Out-Null
$deckUri = "file:///" + ($resolvedDeck -replace "\\", "/")

for ($slide = 1; $slide -le $SlideCount; $slide++) {
    $fileName = "slide-" + $slide.ToString("00") + ".png"
    $outputPath = Join-Path -Path $resolvedOutput -ChildPath $fileName
    $slideUri = "${deckUri}?p=$slide"

    & $edgePath --headless=new --disable-gpu --hide-scrollbars --window-size=1920,1080 `
        "--screenshot=$outputPath" $slideUri

    if (-not (Test-Path -LiteralPath $outputPath)) {
        throw "スライド $slide の画像化に失敗しました: $slideUri"
    }

    # Edge can report a crashpad warning after a successful screenshot.
    # The file check above is the authoritative result for this workflow.
    $global:LASTEXITCODE = 0
}

Write-Host "$SlideCount 枚を $resolvedOutput に出力しました。"
exit 0



