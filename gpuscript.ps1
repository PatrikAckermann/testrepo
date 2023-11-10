$gpus = Get-WmiObject Win32_VideoController

foreach($gpu in $gpus) {
    if ($gpu.name.toLower().contains("rtx") -Or $gpu.name.toLower().contains("gtx") -Or $gpu.name.toLower().contains("rx")) {
        $gpu.name
    }
}