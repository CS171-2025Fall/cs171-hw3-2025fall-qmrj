Write-Host "[powershell] Don't to forget to run cmake first."
Write-Host "[powershell] Rendering cbox_no_light_refract ..."
./build/src/renderer data/cbox_no_light_refract.json -o cbox_no_light_refract.exr
Write-Host "[powershell] Rendering cbox_no_light ..."
./build/src/renderer data/cbox_no_light.json -o cbox_no_light.exr
ffmpeg -y -i ./data/cbox_no_light_refract.exr ./data/cbox_no_light_refract.png
ffmpeg -y -i ./data/cbox_no_light.exr ./data/cbox_no_light.png
