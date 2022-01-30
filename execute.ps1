function Main {   
    # TODO 環境変数から取得するようにする
    [string] $targetDir = "C:\Users\tamay\Downloads";
    [string] $outputDir = "C:\Users\tamay\Desktop\home\download\exe"

    [string[]] $files = getFiles $targetDir
    moveFiles $files $outputDir
}

function moveFiles([string[]] $files, [string] $outputDir) {
    for ($i = 0; $i -lt $files.Length; $i++) {
        # TODO すでにファイルが存在する場合の例外処理を書く
        Move-Item $files[$i] $outputDir
    }
}

function getFiles([string] $targetDir) {
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