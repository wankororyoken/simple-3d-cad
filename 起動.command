#!/bin/bash
# かんたん3D CAD をオフラインで起動するランチャー
# ダブルクリックで実行できます（初回は「開発元未確認」の警告が出たら、
# 右クリック→「開く」を選んでください）。
cd "$(dirname "$0")"
PORT=8765
# 既に起動済みなら使い回す
if ! curl -s -o /dev/null "http://localhost:$PORT/index.html"; then
  python3 -m http.server $PORT >/tmp/cad-server.log 2>&1 &
  sleep 1
fi
open "http://localhost:$PORT/index.html"
echo "かんたん3D CAD を起動しました： http://localhost:$PORT/"
echo "このウィンドウは閉じても構いません（サーバーは動き続けます）。"
