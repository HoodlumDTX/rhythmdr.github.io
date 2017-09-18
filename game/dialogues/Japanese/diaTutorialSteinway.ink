INCLUDE RDFunctions.ink

VAR type = "Passive"

=== NoMusic ===

DOTHIS { setDialogueType(Active)}
Well, here we are.
Time for your final case for the day.
-> END


=== OnMusic ===
DOTHIS { setDialogueType(Active)}
Today you'll treat a patient with <color=#03EBF5>heart block</color>.
Their heartbeats are regularly irregular. 
It's not life-threatening.
But it just makes treating them a little spicier.
Here we go.

-> END




=== FirstMiss ===
Remember to hit that spacebar <color=#03EBF5>HARD</color> and listen to the clack!
-> END

=== FirstMissCompletely ===
Hey, don't fall asleep!
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
Simple enough!
Now let's do the case where the seventh lands on a blocked beat..
-> END

=== Phase2_1Hit ===
Nice transitions.
-> END

=== Phase2MissAlmost ===
Ah! You almost had it.
-> END

=== Interlude2 ===

DOTHIS { setDialogueType(Active)}

Scrumptious!
Now, for this next case..
we're dealing with five patients.
Don't worry, I'll accompany you.
See you in the ER.
-> END

=== Interlude2NoMisses ===

DOTHIS { setDialogueType(Active)}

Scrumptious!
And no misses too.
You got the hang of it quickly.
Now, for this next case..
we're dealing with five patients.
Don't worry, I'll accompany you.
See you in the ER.
-> END