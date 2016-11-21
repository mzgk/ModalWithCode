# Modalをコードで実装する
- VCからボタンでModalVCを表示させる
- データを渡す
- ModalVCのボタンで自身を閉じる（Delegateプロトコルを使用）
- ModalVCからVCにデータを渡す


# Modal表示
- Modalは一時的に別機能を呼び出す場合などに使用する。
- 元のビューの上に重ねて表示される
- 閉じる責務は表示元にあるので、Modal側のDelegateプロトコルを利用する


# 規約
- Modalを使用する場合は、Segueを使わずにコードで処理を行う
- Segueを利用するのは、Sceneを完全に切り替える画面遷移時とする
