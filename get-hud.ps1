$asd = get-content settings.txt
$split = $asd -split " = "
$hud = $split[($split.IndexOf("hud_definition") + 1)]
$hud = $hud | convertfrom-json | convertto-json
$hud | out-file test.json