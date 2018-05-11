#！/bin/sh
while getopts "fb" opt
  do
    case $opt in
      f)
        echo "开始前台打包"
        cd ./public/static
        gulp --env build
        cd ../..
        ;;
      b)
        echo "开始后台打包"
        cd ./admin
        gulp build
        cd ..
        ;;
      *)
        echo -e "选项参数错误\n-f: 前台打包\n-b: 后台打包";;
    esac
done
