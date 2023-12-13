#!/bin/bash

# 引数がない場合はエラーメッセージを表示して終了
if [ $# -eq 0 ]; then
    echo "Usage: $0 <text>"
    exit 1
fi

# 引数をスペースで結合して変数 string に格納
string="$*"

# 文字を１文字ずつタイピング
for (( i=0; i<${#string}; i++ )); do
    echo -n "${string:$i:1}"

    # 0.1から0.3秒までのランダムな遅延
    delay=$(awk -v min=0.1 -v max=0.3 'BEGIN{srand(); print min+rand()*(max-min)}')
    sleep "$delay"
done

echo -e "\n" # 改行を追加

