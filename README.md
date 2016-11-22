# 目的
- Modal表示をコードで実装する
- Scene間で値の受け渡しを行う
- Delegateパターンの確認（Modalを閉じる処理）
- ViewControllerのライフサイクルを確認する


# Modalをコードで実装する
- VCからボタンでModalVCを表示させる
  - storyboard?.instantiateViewController(withIdentifier:) as! ModalのVCクラス名
  - self.present(\_:animated:completion:)
  - データを渡す
- ModalVCのボタンで自身を閉じる
  - Delegateプロトコルを使用し、処理は表示元に実装する
  - ModalVCからVCにデータを渡す
  - 表示元はでModalVCで定義したDelegateプロトコルを宣言し、閉じる処理を実装
  - self.dismiss(animated: true, completion: nil)


# Modal表示
- Modalは一時的に別機能を呼び出す場合などに使用する。
- 元のビューの上に重ねて表示される
- 閉じる責務は表示元にあるので、Modal側のDelegateプロトコルを利用する


# 規約
- Modalを使用する場合は、Segueを使わずにコードで処理を行う
- Segueを利用するのは、Sceneを完全に切り替える画面遷移時とする
