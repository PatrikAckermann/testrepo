$gpus = Get-WmiObject Win32_VideoController
$gpu

foreach($a in $gpus) {
    if ($a.name.toLower().contains("rtx") -Or $a.name.toLower().contains("gtx") -Or $a.name.toLower().contains("rx")) {
        $gpu = $a.name
    }
}

$gpu