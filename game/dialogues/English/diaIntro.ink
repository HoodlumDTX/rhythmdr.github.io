INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38

VAR P1ControlName = "spacebar"

//story stuff

VAR mistakesMade = 0
VAR timesMissed = 0

=== part1 ===
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Bottom)}
    Ian: Oh!
    Ian: Y-you must be the new intern.
    Ian: I'm s-supposed to give you a tutorial..
    Ian: ..but I've just started this game..
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: Your patient's over there.
    Ian: Dr Paige can help you out.
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Ian, you're useless..
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
    Paige: Alright, you behind your computer.
    [BOOTH] Paige: You're enrolling from a.. game convention?
    [BOOTH] Ian: H-how unconventional!
    [BOOTH] Paige: Well, wherever you're at..
    [CUSTOMBUTTON] Paige: ..you treat patients by pressing the P1 Button on the <color=#ff0000>seventh</color> beat.
    [DESKTOP] Paige: ..you treat patients by slamming your spacebar on the <color=#ff0000>seventh</color> beat.
    [NX] Paige: ..you treat patients by pressing the ZL/ZR button on the <color=#ff0000>seventh</color> beat.
    Paige: Got it? Press only on the <color=#ff0000>seventh</color> beat.
    Paige: Here we go.
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
    Paige: Alright.
    Paige: Time for your first real challenge.
    Ian: J-just stay calm, and keep counting to seven!
    Ian: <color=#ff0000>No matter what happens!</color>
    DOTHIS {fadeOut()}
-> END



//---TUTORIAL FEEDBACK----

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Almost.
    [DESKTOP] Ian: T-try really hitting your spacebar HARD.
    [DESKTOP] Ian: Listen to that mighty clack. 
    [DESKTOP] Ian: It helps your timing!
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Ian: Perfect, keep going!
    Paige: Looks like you've got internal rhythm.
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    ~ timesMissed++
    Paige: {timesMissed > 1  : Are you listening? | Oh dear.}
    [DESKTOP] Paige: Remember to hit the spacebar on the SEVENTH BEAT.
    [CUSTOMBUTTON] Paige: Remember to hit the P1 Button on the SEVENTH BEAT.
-> END

=== tutorial0NoInput ===
    [DESKTOP] Ian: H-hey, press the spacebar if you're there.
    [CUSTOMBUTTON] Ian: H-hey, press the P1 Button if you're there.
    Ian: Ah, y-you are!
-> END

=== 01Nurse ===
    DOTHIS {setDialogueType(Passive)}
    Paige: (Excuse the nurse, she's Chinese.)
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Hey, not every beat!
    Paige: Only on the SEVENTH BEAT.
-> END



=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: {tutorial1Miss: That's more like it. | Good.}.
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Excellent, keep going.
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: That's it. One more time, without cues.
-> END

=== tutorial5 ===
    Paige: You've got the hang of it.
    Ian: Congratulations!
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

