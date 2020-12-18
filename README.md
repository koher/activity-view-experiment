# ActivityViewExperiment

`fullScreenCover` で何枚かビューをモーダル表示した上で `ActivityView` ( `UIActivityViewController` をラップした `View` ）で画像を保存した際に、 `ActivityView` の `sheet` と一緒に一番上のモーダルビューも閉じられてしまうことの実験。

アプリを起動し、 "Show" ボタンを繰り返し押してモーダルビューと `ActivityView` を開き、画像を保存することで再現。ただし、初回のみ権限付与の確認のアラートが表示され、その場合は一番上のモーダルビューは閉じられない。
