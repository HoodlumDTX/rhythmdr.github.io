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
    Ian: 你一定就是新來的實習生。
    Ian: 不用在意我。
    Ian: 本來應該是由我來教你一些基本內容的……
    Ian: ……但我現在正忙著打游戲……
    Ian: 因為是排位賽，所以我不能退出……
    Ian: 抱歉啦……
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: 你的病人就在那邊。
    Ian: 佩奇醫生會幫你的。
    Ian: （她現在玩的不是排位賽……）
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: 伊恩，你真沒用。
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
    //Ian: 衹需要在<color=#ff0000>第七拍處</color>按下空格！
    //DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    //DOTHIS {waitForAnimations()}
    Paige: 好吧，那麼，現在在電腦前的這位。
    Paige: 你是在一個……游戲展會上，來參加實習？
    Ian: 哇那可有點稀奇了！
    Paige: 好吧，不管你在哪都行……
    Paige: ……你需要在<color=#ff0000>第七拍</color>處敲擊空格鍵來治療病人。 
    Paige: 明白了嗎？在<color=#ff0000>第七拍</color>處。 
    Paige: 我們開始吧。
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
    Paige: 是時候迎接你第一個真正的挑戰了。
    Ian: 衹要保持冷靜，數到第七拍就好！
    Ian: 不管發生任何情況！
    DOTHIS {fadeOut()}
-> END


=== tutorial0 ===
    Ian: 你一定就是新來的實習生吧。
    Ian: 是在家裏遠程工作？
    Ian: 好吧，不過別搞錯了，事情可沒你想那麼容易。
    Ian: 畢竟這裡還是醫學院。
-> END


=== tutorial1 ===
    Ian: 好吧，我們慢慢來。
    Ian: 哈！
    Ian: 你的第一位病人來了。祝你好運！
-> END

=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 不錯。
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 乾得漂亮，繼續保持。
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 就是這樣。再來一次，這次沒有提示。
-> END

=== tutorial5 ===
    Paige: 你已經掌握得很好了。
    Ian: 恭喜啊！
-> END

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 就差那麼一點。
    Ian: 你可以試著狠狠地砸空格鍵。
    Ian: 敲出“哐”的一聲響。
    Ian: 就能幫你把握住時機了！
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 啊哈，看看你的樣子。
    Paige: 似乎已經是老手了呢。
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 哎呀呀。
    Paige: 記住，要在第七拍按空格鍵。
-> END

=== tutorial0NoInput ===
    Ian: 哦對了，要按空格鍵才能繼續對話。
    Ian: 對對。
    Ian: 這不應該是常識嘛。
-> END

=== 01Nurse ===
    DOTHIS {setDialogueType(Passive)}
    Ian:（請原諒護士小姐姐，她的普通話說得不太好。）
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 不要每一拍都按鍵！
    Paige: 第七拍按空格鍵。
-> END

