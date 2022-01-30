function Main {   
    $outputDir = $pwd.Path + "\output"
    $targetDir = $pwd.Path + "\target"

    $files = getFiles $targetDir
    moveFiles $files $outputDir
}

function moveFiles($files, $outputDir) {
    for ($i = 0; $i -lt $files.Length; $i++) {
        Move-Item $files[$i] $outputDir
    }
}

function getFiles($targetDir) {
    $files = Get-ChildItem $targetDir
    $returnFiles = @()
    for ($i = 0; $i -lt $files.Length; $i++) {
        $fileName = $targetDir + "\" + $files[$i].Name
        $returnFiles += $fileName
    }
    return $returnFiles
}


# Main関数の呼び出し
Main