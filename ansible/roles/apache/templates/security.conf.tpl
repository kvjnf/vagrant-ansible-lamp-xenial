# OSからProd変更してレスポンスヘッダ内のサーバ情報を秘匿する
ServerTokens Prod
# OnからOffへ変更してエラーメッセージ内のサーバ情報を秘匿する
ServerSignature Off
# レスポンスヘッダ X-Powered-By PHP/5.3.29とか出さない。
Header always unset X-Powered-By
# クリックジャッキング対策
Header set X-Frame-Options: "sameorigin"
# XSS対策
Header set X-XSS-Protection "1; mode=block"
Header set X-Content-Type-Options nosniff
# XST対策
TraceEnable Off
# IE: sniff対策
Header set X-Content-Type-Options: "nosniff"
