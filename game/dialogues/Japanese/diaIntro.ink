INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38

VAR P1ControlName = "スペースキー"

//story stuff

VAR mistakesMade = 0
VAR timesMissed = 0

=== part1 ===
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Bottom)}
    Ian: おぉ！  
    Ian: き...君が新しく来た実習生ですね...
    Ian: 本来は君にチュートリアルをしてあげるはずですが... 　
    Ian: いまこのゲームをやっててちょっと忙しいですよ...  
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: ペイジ先生が代わりに教えてくれますよ...   
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: イーアン、この役立たずめ。
    DOTHIS {hidePanel(0)}
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
    Paige: なるほど、君、画面の向こうにいるんだね。    
    [BOOTH] Paige: ゲームイベントから参加しただと？
    [BOOTH] Ian: な...なんと、けしからんことを！
    [BOOTH] Paige: まぁいい、どこにいるかどうでもいい...
    Paige: これから君が<color=#ff0000>7拍子目</color>のビートで{ P1ControlName }を打って患者を治療するんだ。
    Paige: 分かったか？<color=#ff0000>7拍子目</color>のビートだけを押すんだ。  
    Paige: 行くぞ。
    DOTHIS {runLevelMethod("ShowTutorial")}
-> END

//--AFTER TUTORIAL----

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
    Paige: いいか？
    Paige: 本番が始まるぞ。
    Ian: 落ち着いて、7拍子目までよく数えてね！
    Ian: <color=#ff0000>たとえ何が起こってもね！</color> 
    DOTHIS {fadeOut()}
-> END



//---TUTORIAL FEEDBACK----

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: あともう少しだ。
    [DESKTOP] Ian: 力を入れて{ P1ControlName }を打ってみてね。
    [DESKTOP] Ian: その強拍の音に耳を傾けてね。
    [DESKTOP] Ian: タイミングに役に立つよ！
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Ian: すばらしい、そのまま続けてね!
    Paige: どうやら君はそのリズムをよくとっているそうだ。
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    ~ timesMissed++
    Paige: {timesMissed > 1  : 聞いている？ | あら。}
    Paige: 忘れずに7拍子目のビートで{ P1ControlName }だけを押すんだ。
   
-> END

=== tutorial0NoInput ===
    Ian: お..おい、君がそこにいるなら、{ P1ControlName }を押してね...
    Ian: あぁ、君がまだそこにいるね！
-> END

=== 01Nurse ===
    DOTHIS {setDialogueType(Passive)}
    Paige: (看護士を許してくれ、彼女は中国人だ。)
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: おい、すべてのビートを押すな！
    Paige: 7拍子目のビートだけを押すんだ！
-> END



=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: {tutorial1Miss: さっきより良く出来たんだ。| よし。}
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: すばらしい、そのまま続け！
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: いよいよだ。指示なしでもう一度やって見るぞ。
-> END

=== tutorial5 ===
    Paige: 君は要領をつかまったそうだ。
    Ian: おめでとう！
-> END


//----OLD BACKUPS NO NEED TRANSLATION FROM THIS POINT ON -------

=== part1_backup ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Top)}
    Paige: Hey Ian!
    Paige: Why are you...? 
    Paige_RedNose: Why don't you show me this new method of treating patients?
    Ian: Yup! Come over here.
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {moveX_ease(Ian, 40, 2, Linear)}
    DOTHIS {translateCam_ease(127, 0, 2, Linear)}
    DOTHIS {waitForAnimations()} 
    DOTHIS {playExpression (Ian,"explaining")}
    Ian: This guy was walking near the hospital, and volunteered as a tester!
    Ian: I'm gonna turn the defribilator on from my computer, and then i'll guide you from there. 
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, -1)}
    DOTHIS {translateX(Ian, -100, 1)}
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {move(Farmer, -1000, 0, 0.0)} //Disappear it
    DOTHIS {moveX(Row, RowX, 0.0)}
    DOTHIS {translate(Row, 0, FarmerPosY, 0.0)}
    DOTHIS {waitForAnimations()}
    Ian: Ok cue the music!
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
-> END

=== part1_NOTEXPO ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Top)}
    Ian: Oh!
    Ian: You're finally here!
    Ian: Y-you must be the new intern.
    Ian: D-don't mind me..
    Ian: We were waiting for so long..
    Ian: ..that I started a game..
    Ian: It's a ranked match s-so I can't quit..
    Ian: I'm sorry..
    //Ian: Ok, let's start the rhythm defribilator test.
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: Your patient's over there.
    Ian: Dr Paige can help you out.
    Ian: (She's not playing a ranked match..)
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Ian, you're useless.
    Ian: I-it helps my anxiety!
    Ian: (Excuse me a m-moment..)
    Ian: [shout]MID OR AFK SCRUB
    Paige: [0.4]Sigh..
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {move(Farmer, -1000, 0, 0.0)} //Disappear it
    DOTHIS {moveX(Row, RowX, 0.0)}
    DOTHIS {translate(Row, 0, FarmerPosY, 0.0)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
-> END

=== part2ish_NOTEXPO ===
    
    //DOTHIS {setDialogueType(Passive)}
    //DOTHIS {setPanelSide(Top)}
    //Ian: Just press the { P1ControlName } on the <color=#ff0000>seventh</color> beat!
    DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    DOTHIS {waitForAnimations()}
    Paige: Alright, you behind your computer.
    Paige: I don't know who you are.
    Paige: But if you want to join our Rhythm Doctor program..
    Paige: You'll have to impress Mr Grey in the evaluation.
    Paige: Here's your first patient.
    Paige: Just slam your { P1ControlName } on the <color=#ff0000>seventh</color> beat.
    Paige: Here we go.
    DOTHIS {runLevelMethod("ShowTutorial")}
    
-> END

=== part2_NOTEXPO ===
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
    Paige: Alright.
    Paige: It's time for your evaluation.
    Ian: J-just stay calm, and remember to press on the seventh beat!
    DOTHIS {fadeOut()}
-> END

