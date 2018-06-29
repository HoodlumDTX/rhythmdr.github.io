INCLUDE RDFunctions.ink

VAR type = "Passive"

=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
네가 그 학생인가 보구나.
게임 페스티벌에서 일한다고?
의과대학이라는 곳이 별별 사람을 다 받는구만...

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }
좋아, 첫 번째 플레이어. 왼쪽 시프트 키를 맡아라.
넌 파란색 선 안에 있는 환자를 맡게 될 거다.
두 번째 플레이어, 너는 오른쪽 시프트 키를 맡아라.
너는 빨간색 선 안에 있는 환자를 맡게 될 거다.
박자를 센 다음, 일곱 번째 박자에 맞춰서 버튼을 누르는 거야.
첫 번째 플레이어부터 시작해보게.

-> END


=== expoTwoPlayer1Miss ===

아깝구나!
키를 부숴버릴 듯이 내리찍어보렴.

-> END


=== expoTwoPlayer1Perfect === 

오, 이거 봐.
이미 어떻게 하는지 잘 알고 있구만.
축하하네.

-> END


=== expoTwoPlayer2 === 

좋아, 이제 두 번째 플레이어 차례군.

-> END

=== expoTwoPlayer3 === 

아주 좋아, 계속 하게.

-> END

=== expoTwoPlayer4 === 

좋아. 한 번 더 해보게. 이번에는 헤아림 없이.

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
좋아. 아주 잘하는구나.
밖에서 첫 번째 환자가 기다리고 있어.
몹시 아픈 환자는 아니고...
그저 터무니없을 정도로 감상적이더구먼.
행운을 비네.

-> END


=== expoTwoPlayer1NoInput === 

이런.
일곱 번째 박자에 버튼을 누르는 걸 잊지 말게.

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }
아, 계속 하려면 시프트 키를 누르게나.
그렇지.

-> END


=== expoTwoPlayer01Nurse === 

(간호사가 중국인일세. 이해해주게.)

-> END

=== expoTwoPlayerEveryBeat === 

이런!
모든 박자에 버튼을 누를 필요는 없어! 일곱 번째 박자에서만 누르게.

-> END