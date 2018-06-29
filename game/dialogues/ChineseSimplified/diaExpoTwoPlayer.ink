INCLUDE RDFunctions.ink

VAR type = "Passive"
VAR P1ControlName = "左Shift"
VAR P2ControlName = "右Shift"
VAR AnyControlName = "Shift"

=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
“你们一定是新来的实习生了。
哎，你们是在游戏展上远程来实习？
我们的医学院还真是什么样的学生都有啊……”

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }
“好的，玩家1，请使用{ P1ControlName }键。
你负责蓝色区域对应的病人。
玩家2，请使用{ P2ControlName }键。
你负责红色区域对应的病人。
请数数在第七拍按键。
玩家1，由你开始！”

-> END


=== expoTwoPlayer1Miss ===

就差那么一点！
狠狠地砸你的按键吧。

-> END


=== expoTwoPlayer1Perfect === 

啊哈，看看你的样子。
似乎已经是老手了呢。
恭喜！

-> END


=== expoTwoPlayer2 === 

“好，那么接下来是玩家2……”

-> END


=== expoTwoPlayer4 === 

就是这样。再来一次，这次没有提示。

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
很好，你们已经掌握得不错了。
你们的第一位病人现在正在外面等候。
他其实不是真的得了什么病。
只是有点多愁善感。
总之，祝你们好运啦。

-> END


=== expoTwoPlayer1NoInput === 

哎呀呀。
记住，要在第七拍的时候按键。

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }
哦对了，要按{ AnyControlName }键才能继续对话。
这就对了。

-> END


=== expoTwoPlayer01Nurse === 

（请原谅护士小姐姐，她的普通话说得不太好。）

-> END


=== expoTwoPlayer3 === 

干得漂亮，继续保持。

-> END


=== expoTwoPlayerEveryBeat === 

嘿！！
不要每个节拍都按键！只在第七拍按就好了。

-> END