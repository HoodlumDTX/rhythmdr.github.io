INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38



=== part1 ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Bottom)}
    Ian: 噢！
    Ian: 你一定就是新来的实习生。
    Ian: 不用在意我。
    Ian: 本来应该是由我来教你一些基本内容的……
    Ian: ……但我现在正忙着打游戏……
    Ian: 因为是排位赛，所以我不能退出……
    Ian: 抱歉啦……
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: 你的病人就在那边。
    Ian: 佩奇医生会帮你的。
    Ian: （她现在玩的不是排位赛……）
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: 伊恩，你真没用。
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
    DOTHIS {wait(1)}
    DOTHIS {translate_ease(Farmer, 0.0, -FarmerPosY, 0.5, OutQuad)}
    DOTHIS {waitForAnimations()}
    DOTHIS {wait(1)}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {moveX(Row, RowX, 0.0)} 
    DOTHIS {moveX(Farmer, -1000.0, 0)} //Disappear dummy
    DOTHIS {waitForAnimations()}
-> END


=== part2ish ===
    
    //DOTHIS {setDialogueType(Passive)}
    //DOTHIS {setPanelSide(Top)}
    //Ian: 只需要在<color=#ff0000>第七拍处</color>按下空格！
    //DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    //DOTHIS {waitForAnimations()}
    Paige: 好吧，那么，现在在电脑前的这位。
    Paige: 你是在一个……游戏展会上，来参加实习？
    Ian: 哇那可有点稀奇了！
    Paige: 好吧，不管你在哪都行……
    Paige: ……你需要在<color=#ff0000>第七拍</color>处敲击空格键来治疗病人。 
    Paige: 明白了吗？在<color=#ff0000>第七拍</color>处。 
    Paige: 我们开始吧。
    DOTHIS {runLevelMethod("ShowTutorial")}
-> END


=== part2 ===
    //after tutorial
    DOTHIS {runLevelMethod("ShowBasement")}
    DOTHIS {move(Ian, 141, -35, 0.0)}
    DOTHIS {fadeIn()}
    DOTHIS {wait(1)}
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {translateX(Ian, 100, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {playExpression(Ian, "sighing")}
    DOTHIS {setPanelSide(Top)}
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {setPanelSide(Bottom)}
    Paige: 好嘞。
    Paige: 是时候迎接你第一个真正的挑战了。
    Ian: 只要保持冷静，数到第七拍就好！
    Ian: 不管发生任何情况！
    DOTHIS {fadeOut()}
-> END


=== tutorial0 ===
    Ian: 你一定就是新来的实习生吧。
    Ian: 是在家里远程工作？
    Ian: 好吧，不过别搞错了，事情可没你想那么容易。
    Ian: 毕竟这里还是医学院。
-> END


=== tutorial1 ===
    Ian: 好吧，我们慢慢来。
    Ian: 哈！
    Ian: 你的第一位病人来了。祝你好运！
-> END

=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 不错。
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 干得漂亮，继续保持。
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 就是这样。再来一次，这次没有提示。
-> END

=== tutorial5 ===
    Paige: 你已经掌握得很好了。
    Ian: 恭喜啊！
-> END

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 就差那么一点。
    Ian: 你可以试着狠狠地砸空格键。
    Ian: 敲出“哐”的一声响。
    Ian: 就能帮你把握住时机了！
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 啊哈，看看你的样子。
    Paige: 似乎已经是老手了呢。
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 哎呀呀。
    Paige: 记住，要在第七拍按空格键。
-> END

=== tutorial0NoInput ===
    Ian: 哦对了，要按空格键才能继续对话。
    Ian: 对对。
    Ian: 这不应该是常识嘛。
-> END

=== 01Nurse ===
    DOTHIS {setDialogueType(Passive)}
    Ian:（请原谅护士小姐姐，她的普通话说得不太好。）
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 不要每一拍都按键！
    Paige: 第七拍按空格键。
-> END

