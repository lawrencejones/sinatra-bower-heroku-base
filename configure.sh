find . -exec sed -i "s/<APP_NAME>/$1/g" {} \;
rm -f $0 ./.git && git init
