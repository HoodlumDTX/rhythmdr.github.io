INCLUDE RDFunctions.ink

VAR type = "Passive"
VAR P1ControlName = "左Shift"
VAR P2ControlName = "右Shift"
VAR AnyControlName = "Shift"

=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
“你們一定是新來的實習生了。
哎，你們是在游戲展上遠程來實習？
我們的醫學院還真是什麼樣的學生都有啊……”

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }
“好的，玩家1，請使用{ P1ControlName }鍵。
你負責藍色區域對應的病人。
玩家2，請使用{ P2ControlName }鍵。
你負責紅色區域對應的病人。
請數數在第七拍按鍵。
玩家1，由你開始！”

-> END


=== expoTwoPlayer1Miss ===

就差那麼一點！
狠狠地砸你的按鍵吧。

-> END


=== expoTwoPlayer1Perfect === 

啊哈，看看你的樣子。
似乎已經是老手了呢。
恭喜！

-> END


=== expoTwoPlayer2 === 

“好，那麼接下來是玩家2……”

-> END


=== expoTwoPlayer4 === 

就是這樣。再來一次，這次沒有提示。

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
很好，你們已經掌握得不錯了。
你們的第一位病人現在正在外面等候。
他其實不是真的得了什麼病。
隻是有點多愁善感。
總之，祝你們好運啦。

-> END


=== expoTwoPlayer1NoInput === 

哎呀呀。
記住，要在第七拍的時候按鍵。

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }
哦對了，要按{ AnyControlName }鍵才能繼續對話。
這就對了。

-> END


=== expoTwoPlayer01Nurse === 

（請原諒護士小姐姐，她的普通話說得不太好。）

-> END


=== expoTwoPlayer3 === 

干得漂亮，繼續保持。

-> END


=== expoTwoPlayerEveryBeat === 

嘿！！
不要每個節拍都按鍵！隻在第七拍按就好了。

-> END