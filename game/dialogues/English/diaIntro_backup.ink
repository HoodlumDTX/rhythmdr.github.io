INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38

// testing

=== dummy ===
    
    Paige: Oh my! a new intern...
    Paige: Why are you...? 
    Paige_RedNose: Can you move a little to the hmmm, [1]right?
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {hidePanel(4)}
    DOTHIS {translateX_ease(Ian, 80, 3, "Linear")}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {playExpressionD(Ian,"sighing", 1.5)}
    Ian: Here?
    Paige: Maybe a little to the left, but just a liiitle.
    DOTHIS {waitForAnimations()}
    DOTHIS {translateX(Ian, -20, 2)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {scaleX(Ian, -1)}
    DOTHIS {playExpressionD(Ian,"sighing", 1)}
    Paige: There! It's fine. Why...
    DOTHIS {playExpression(Ian,"explaining")}
    Ian: I'm sorry, I was late because of the awful traffic and-- 
    Paige: No no, why you don't smile for the picture!
    DOTHIS {flash()}
    DOTHIS {playExpression(Ian, "sighing")}
    Paige: Yeah, that's good!
    Ian: Oh, that's great... I'll look so weird on my photocheck.
    Paige: Let me focus the camera and take a picture again!
    DOTHIS {waitForAnimations()}
    DOTHIS {moveCam(63, 5, 3)}
    Paige: Wait this picture is just fine! See you tomorrow on your first day!
    Bye!
    DOTHIS {fadeOut()}
    
-> END

=== dummy3 ===
    
    Paige: Oh my! a new intern...
    Paige: Why are you...? 

    Paige_RedNose: Can you move a little to the hmmm, [1]right?
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {hidePanel(4)}
    DOTHIS {translateX(Ian, 80, 3)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {playExpressionD(Ian,"sighing", 1.5)}
    Ian: Here?
    Paige: Maybe a little to the left, but just a liiitle.
    DOTHIS {waitForAnimations()}
    DOTHIS {translateX(Ian, -20, 2)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {scaleX(Ian, -1)}
    DOTHIS {playExpressionD(Ian,"sighing", 1)}
    Paige: There! It's fine. Why...
    DOTHIS {playExpression(Ian,"explaining")}
    Ian: I'm sorry, I was late because of the awful traffic and-- 
    DOTHIS {translateCam(352, 0, 8)}
    DOTHIS {translateX(Ian, 200, 8)}
    Ian: But...
-> END



=== partTest ===
    
    DOTHIS {setPanelSide(Top)}
    Paige: Hey Ian!
    Paige: Why are you...? 
    Paige_RedNose: Why don't  you show me this new method of treating patients?
    Ian: Yup! Come over here.
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {moveX_ease(Ian, 158, 6, InOutQuad)}
    DOTHIS {playExpressionD (Ian,"sighing", 5.8)}
    DOTHIS {waitForAnimations()} 
    DOTHIS {translateCam_ease(300, 0, 6, InOutQuad)}
    DOTHIS {waitForAnimations()} 
    Ian: This guy was walking near the hospital, and volunteered as a tester!
    Ian: I'm gonna turn the defribilator on from my computer, and then i'll guide you from there. 
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, -1)}
    DOTHIS {translateX(Ian, -100, 2)}
    Paige: OK I'm ready!
    DOTHIS {hidePanel(0)}
    DOTHIS {runLevelMethod("ShowTutorial")}
    DOTHIS {move(Farmer, 159, 0, 0.5)}
    DOTHIS {waitForAnimations()}
    DOTHIS {wait(1)}
    DOTHIS {setPanelSide(Bottom)}
    Ian: Press space to continue!
    DOTHIS {move(Farmer, -1000, 0, 0.0)} //Disappear it
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {translateX("Row 0", 300, 0.0)}
    
    
-> END
