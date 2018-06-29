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
    Ian: 아!
    Ian: 그... 그러니까 네가 새로운 인턴이구나?
    Ian: 나... 나는 신경 쓰지 마.
    Ian: 사실 내가 튜토리얼을 진행해야 하는데...
    Ian: ... 게임 하느라 바빠서.
    Ian: 경쟁전이라서 끌 수도 없어...
    Ian: 미안...
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: 네가 맡을 환자는 여기 있어.
    Ian: 페이지가 너를 도와줄 거야.
    Ian: (걔는 경쟁전 안 하거든...)
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: 이안, 넌 정말로 쓸모가 없구나.
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
    
    Paige: 좋아. 모니터 뒤에 있는 너.
    Paige: 너 지금... 게임 페스티벌에 있는 거야?
    Ian: 우와, 너 정말 부럽다!
    Paige: 뭐 어디에 있든지 간에...
    Paige: ... <color=#ff0000>일곱 번째</color> 박자에 맞춰서 스페이스 바를 눌러 환자를 도와주면 돼.
    Paige: 알았지? <color=#ff0000>일곱 번째</color> 박자야.
    Paige: 한 번 해보자.
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
    Paige: 좋아.
    Paige: 이제 실제 상황에 도전해보자고.
    Ian: 다... 당황하지 말고, 계속 일곱 박자를 세!
    Ian: 무슨 일이 있어도 말이지!
    DOTHIS {fadeOut()}
-> END


=== tutorial0 ===
    Ian: 네가 그 학생인가 보구나.
    Ian: 자택근무? 흠?
    Ian: 착각하지는 말라고, 그래도 쉽지는 않을 테니까.
    Ian: 아직은 의과대학이기도 하고 말이지.
-> END


=== tutorial1 ===
    Ian: 좋아, 서두를 것 없으니 천천히 하자고.
    Ian: 하!
    Ian: 저기 첫 번째 환자야. 행운을 빌어!
-> END

=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 좋아.
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 완벽하네. 계속해.
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 바로 그거야. 한 번 더 해봐. 이번에는 헤아림 없이.
-> END

=== tutorial5 ===
    Paige: 좋아, 아주 잘하네.
    Ian: 축하해!
-> END

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 아깝네.
    Ian: 스페이스 바를 강하게 눌러보는 건 어때?
    Ian: 소리도 들어봐. 
    Ian: 박자를 셀 때 도움이 될 거야!
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 우와, 얘 봐라?
    Paige: 이미 어떻게 하는지 잘 알고 있네?
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 이런.
    Paige: 일곱 번째 박자에 스페이스 바를 눌러.
-> END

=== tutorial0NoInput ===
    Ian: 아, 대화를 넘기려면 스페이스 바를 눌러.
    Ian: 좋아, 이제 말이 통하네.
    Ian: 이런 건 진작 알고 있어야 하는 거 아닌가 싶은데.
-> END

=== 01Nurse ===
    //DOTHIS {setDialogueType(Passive)}
    //Ian: (간호사가 중국인이라서 그래, 이해해줘.)
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: 모든 박자에 누르지 않아도 돼!
    Paige: 오직 일곱 번째 박자에만 맞추면 돼.
-> END


//-----------BACKUPS---------------------

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
    Ian: 아!
    Ian: 드디어 왔구나!
    Ian: 그... 그러니까 너가 새로운 인턴이구나?
    Ian: 나... 나는 신경 쓰지 마.
    Ian: 널 너무 오랫동안 기다린 나머지...
    Ian: ... 게임을 시작해버렸지 뭐야...
    Ian: 경쟁전이라 끌 수도 없어...
    Ian: 미안
    //Ian: Ok, let's start the rhythm defribilator test.
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: 네가 맡을 환자는 여기 있어.
    Ian: 페이지가 너를 도와줄 거야.
    Ian: (걔는 경쟁전 안 하거든...)
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: 이안, 넌 정말로 쓸모가 없구나.
    Ian: 그거 정말 불안감에 도움 되는 말이네!
    Ian: (자... 잠깐 실례...)
    Ian: [shout]미드 아니면 게임 던짐 ㅅㄱ
    Paige: [0.4]하아...
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
    //Ian: Just press space on the <color=#ff0000>seventh</color> beat!
    DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    DOTHIS {waitForAnimations()}
    Paige: 좋아. 모니터 뒤에 있는 너.
    Paige: 난 사실 네가 누군지도 몰라.
    Paige: 하지만 리듬 닥터 프로그램에 지원하려면...
    Paige: 곧 있을 평가에서 그레이 씨를 놀라게 해야 할 거야.
    Paige: 여기 첫 번째 환자가 있어.
    Paige: <color=#ff0000>일곱 번째</color> 박자에 맞춰서 스페이스 바를 누르면 돼.
    Paige: 한 번 해보자.
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
    Paige: 좋아.
    Paige: 이제 평가 시간이야.
    Ian: 다... 당황하지 말고, 일곱 번째 박자에서 스페이스 바를 누르는 걸 잊지 마!
    DOTHIS {fadeOut()}
-> END

