INCLUDE RDFunctions.ink

VAR type = "Passive"

=== NoMusic ===

DOTHIS { setDialogueType(Active)}
Another day on the SVT ward.
OK, music!

-> END


=== OnMusic ===
DOTHIS { setDialogueType(Active)}
Today you'll learn a variation on the SVT beat.
Instead of a regular <color=#03EBF5>lub-dub</color> heart..
..these kind of patients have a slight delay to their <color=#03EBF5>dub</color>.
Just remember to follow the nurses cues.
Here we go.

-> END


=== Nurse ===

dont show this

-> END

=== FirstMiss ===
Remember the slight pause.
Nurse Miaw, why don't you type up these reports loudly to help junior here?
-> END

=== FirstMissCompletely ===

Remember the slight pause.
Nurse Miaw, why don't you type up these reports loudly to help junior here?
-> END

=== FirstHitPerfect ===

Wow
-> END

=== Phase1_1Hit ===
I
-> END

=== Phase1_2Hit ===
hope
-> END


=== Phase1_3Hit ===
you
-> END


=== Phase1_4Hit ===
stay
-> END


=== Phase1_5Hit ===
with
-> END

=== Interlude1 ===

DOTHIS { setDialogueType(Active)}
us - alright that's it.
Today it's another caffeine addiction case.
He's a barista.
He really shouldn't be.
We're also running low on staff today..
..so you might have your hands a little full.
Well, good luck!
-> END

=== Interlude1Perfect ===

DOTHIS { setDialogueType(Active)}
us because wow no misses.
Talent like you..
..shouldn't waste time with patient backstories.
Just breeze through this one like you do.
I'll be back later.

-> END