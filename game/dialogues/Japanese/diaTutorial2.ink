INCLUDE RDFunctions.ink

VAR type = "Passive"

=== Tutorial0 ===

DOTHIS { setDialogueType(Active) }
Oh~!
You're still here!
Oh well.

-> END


=== Tutorial1 ===

DOTHIS { setDialogueType(Active) }
Today you'll get a new kind of patient.
Some patients come to us with this problem you see.
Their heart skips a beat.
So catch it while they're still in reach.
Just count the numbers in your head
and hit it on the seventh beat.

-> END


=== Tutorial1Miss ===

Aah, almost!
If you're having trouble, try tapping out the ghost beats.

-> END

=== Tutorial0NoInput ===
DOTHIS { setDialogueType(Active) }
Remember to hit the spacebar on the SEVENTH BEAT.
-> END

=== Tutorial1NoInput ===

Oh dear.
Remember to hit the spacebar on the SEVENTH BEAT.
-> END

=== Tutorial1Nurse ===
(Excuse the nurse, she's Chinese.)
-> END

=== Tutorial1Perfect ===
Wow, you're a natural.
-> END

=== Tutorial2 ===
Yuh-huh.
-> END


=== Tutorial3 ===
Oh yes.
-> END

=== Tutorial4 ===
One more.
-> END


=== Tutorial5 ===

DOTHIS { setDialogueType(Active) }
Ah~!
Good.
Your next patient isn't really sick.
He's just suffering from excessive schmaltziness.
Hopefully you can snap him out of it.
Well, good luck.

-> END