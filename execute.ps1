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
        $isValidExtension = validExtension $fileName

        if ($isValidExtension) {
            $returnFiles += $fileName
        }

    }

    return $returnFiles
}

function validExtension($fileName) {
    # 指定したい拡張子はここに追加
    $isValid = $false
    if ($fileName -match "exe$") {
        $isValid = $true
    }
    return $isValid
}


# Main関数の呼び出し
Main