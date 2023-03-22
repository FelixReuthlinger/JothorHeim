$TargetZipFileName = "~\Downloads\$(Split-Path -Path $PSScriptRoot -Leaf).zip"
$compress = @{
  Path             = "README.md", "manifest.json", "icon.png", "LICENSE", "config"
  CompressionLevel = "Fastest"
  DestinationPath  = $TargetZipFileName
}
Compress-Archive @compress -Force
