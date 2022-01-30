function Main($type, $memo) {
    # 1. dir内のファイルをリストに格納する。
    #   1. json形式のものだけ
    # 2. 1.のリスト内をtempに移動する
    
    $target = $pwd.Path + "\target\target.json"
    $outputDir = $pwd.Path + "\output"

    move $target $outputDir
}


function makeSelectDirs($historys) {

}


# Main関数の呼び出し
# $type = $args[0]
# $memo = $args[1]
Main