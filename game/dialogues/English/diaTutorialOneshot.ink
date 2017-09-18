INCLUDE RDFunctions.ink

VAR type = "Passive"

=== NoMusic ===

DOTHIS { setDialogueType(Active)}
Wow you've come far.
A Tier 3 Rhythm Doctor eh?
-> END


=== OnMusic ===
DOTHIS { setDialogueType(Active)}
Today you're in the <color=red>Supraventricular Tachycardia</color> ward.
Patients here have <color=#03EBF5>two</color> beats instead of seven.
The nurse will cue you in.
Here we go.

-> END


=== Nurse ===
(She's picked up English now.)
-> END

=== FirstMiss ===
Remember to hit that spacebar <color=#03EBF5>HARD</color> and listen to the clack!
-> END

=== FirstMissCompletely ===
Remember to follow the nurse's 'get' and 'set'.
-> END

=== FirstMissAfterMissCompletely ===
You're closer now. Just hit HARD, and listen to your spacebar's mighty CLACK.
-> END

=== FirstHitPerfect ===
Wow first time.
-> END

=== Phase1_1Hit ===
Good.
-> END

=== Phase1_2Hit ===
Great.
-> END


=== Phase1_3Hit ===
Perfect.
-> END


=== Phase1_4Hit ===
Superb.
-> END


=== Phase1_5Hit ===
Ooh!
-> END

=== Interlude1 ===

DOTHIS { setDialogueType(Active)}
OK.
Now you should learn how to deal with attacks.
When SVT patients have attacks, their heart rate <color=#FF0000>doubles</color>.
And when they stabilise, it <color=#03EBF5>halves</color>.
The nurse will see changes coming.
And she will warn you with a <color=#03EBF5>faster cue</color>.
Here we go!
-> END

=== Phase2_1Hit ===
Nice transitions.
-> END

=== Phase2MissAlmost ===
Ah! You almost had it.
-> END

=== Interlude2 ===

DOTHIS { setDialogueType(Active)}

Smooth~
You've got it down.
Our next patient has caffeine-induced SVT.
It's our job here to wean him off his coffee.
You just need keep him stabilised him through the attacks.
Let's hope the wifi holds up this time.
Good luck.
-> END

=== Interlude2NoMisses ===

DOTHIS { setDialogueType(Active)}

Hm..
...Not a single mistimed hit.
Um.. 
OK.. 
Very.. well done.
Our next patient has caffeine-induced SVT.
Just need keep him stabilised him through the attacks.
Let's hope the wifi holds up this time.
..Or maybe you'd prefer the challenge if it didn't.
...
-> END