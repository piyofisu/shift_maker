# アプリケーション名
shift_maker
# アプリケーション概要
所属のスタッフを登録し、月間のシフトの作成を行えます。
# URL
https://shift-maker.onrender.com
# テスト用アカウント
EMAIL: a@a
PASS: 123456
Basic認証
ID: tiger
PASS: 5688
# 利用方法
「スタッフ」内で所属の従業員を登録し、トップページから「シフト」内で月間の勤務時間帯を各スタッフに割り当て「Create Shift」ボタンでシフトの作成
# アプリケーションを作成した背景
前々職の同僚に業務上の課題をヒアリング。マネージャーに昇格していたことからシフトの作成を担当者になっていましたが、「シフト作成に時間がかかる。」とのことでした。
24時間営業でスタッフ人数も多く、考えなければいけない制約が多いので時間を取られてるようでしたので、シフト作成時間の短縮を目的に作成いたしました。
# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/165YKaxsnzBE4d8mGFGmqllZdt0CGPw0eQhtEMuGVWF0/edit?gid=1094606676#gid=1094606676)
# 実装した機能についての画像やGIFおよびその説明
・スタッフの登録とトップページへの反映
[![Image from Gyazo](https://i.gyazo.com/de36c131b70fd66b49ccd9ef8d95b01b.gif)](https://gyazo.com/de36c131b70fd66b49ccd9ef8d95b01b)
・登録済みスタッフへのシフトの割り当て
[![Image from Gyazo](https://i.gyazo.com/e4dca53e416f3447946d46732ce0ead9.gif)](https://gyazo.com/e4dca53e416f3447946d46732ce0ead9)
# 実装予定の機能
・現在はスタッフの複数登録機能を
・勤務時間帯（時間帯・色・名前）を各事業所で設定できるようにモデルを作成
・CSV出力
## 最終的な実装
様々な条件を踏まえたうえで1クリックで自動作成
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/fd3e68823c04a891b41859c1ada988ed.png)](https://gyazo.com/fd3e68823c04a891b41859c1ada988ed)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ad0d993f60ce6639d075ef341886b6b8.png)](https://gyazo.com/ad0d993f60ce6639d075ef341886b6b8)
# 開発環境
言語:Ruby
フレームワーク:Ruby on Rails
サーバー:Render
# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://github.com/piyofisu/shift_maker.git
% cd shit_maker
% bundle install
% rails db:create
% rails db:migrate
# 工夫したポイント
・まずは最低限の機能の実装を目指しました。最低限とは現在社内で使用しているシフト作成用のExcelファイルと同程度の機能を持たせることです。
要件定義に目を通してもらい、不要な項目の削除や希望する機能の確認を行いました。
# 改善点
・見た目の改善・UIの改良：より操作しやすいようにCSSで装飾
# 制作時間
・2週間