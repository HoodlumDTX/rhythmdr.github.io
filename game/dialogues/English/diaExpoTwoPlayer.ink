INCLUDE RDFunctions.ink

VAR type = "Passive"

VAR P1ControlName = "LEFT SHIFT key"
VAR P2ControlName = "RIGHT SHIFT key"
VAR AnyControlName = "SHIFT"

=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
"You must be our new students.
Working from a game expo eh?
Our med school gets all kinds.."

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }
"OK, Player One, use the { P1ControlName }.
You are in charge of patients in the BLUE line.
Player Two, use the { P2ControlName }.
You are in charge of the RED line.
Just COUNT and press on the SEVENTH BEAT. 
Player one, you start!"

-> END


=== expoTwoPlayer1Miss ===

Almost!
Try SLAMMING your key harder.

-> END


=== expoTwoPlayer1Perfect === 

Oh, look at you.
You clearly know how to do this already.
Congratulations.

-> END


=== expoTwoPlayer2 === 

"Good. Now player two.."

-> END

=== expoTwoPlayer3 === 

Excellent, keep going.

-> END

=== expoTwoPlayer4 === 

That's it. One more time, without cues.

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
Alright. You've got the hang of it.
Your first patient is waiting outside.
He's not really sick.
Just suffering from excessive schmaltziness.
Well, good luck.

-> END


=== expoTwoPlayer1NoInput === 

Oh dear.
Remember to hit your button on the SEVENTH BEAT.

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }
Oh, hit { AnyControlName } to advance the text.
There we go.

-> END


=== expoTwoPlayer01Nurse === 

(Excuse the nurse, she's Chinese.)

-> END

=== expoTwoPlayerEveryBeat === 

HEY!!
You dont have to press on every beat! Just the SEVENTH.

-> END