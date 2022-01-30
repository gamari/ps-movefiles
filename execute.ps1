function Main($type, $memo) {
    # 1. dir内のファイルをリストに格納する。
    #   1. json形式のものだけ
    # 2. 1.のリスト内をtempに移動する
    
    $outputDir = $pwd.Path + "\output"
    $targetDir = $pwd.Path + "\target"

    # move $target $outputDir
    $files = getFiles $targetDir
    echo $files
}

function getFiles($targetDir) {
    $files = Get-ChildItem $targetDir
    # echo $files
    $returnFiles = @()
    for ($i = 0; $i -lt $files.Length; $i++) {
        $fileName = $targetDir + "\" + $files[$i].Name
        $returnFiles += $fileName
    }
    return $returnFiles
}


function makeSelectDirs($historys) {

}


# Main関数の呼び出し
# $type = $args[0]
# $memo = $args[1]
Main