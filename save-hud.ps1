$asd = get-content test.json
$asd = $asd.replace(" ","") -join ""
$asd = "hud_definition = " + $asd

$settings = get-content settings.txt

$settings_changed = $settings | ForEach-Object {if ($_ -like "hud_definition*") {$_=""} else {$_}}
$settings_changed += $asd
$settings_changed | set-content settings.txt
