INCLUDE RDFunctions.ink
VAR type = "active"
VAR feedback = ""

=== Intro1 ===
Hey doc..
Your patient still doesn't look too good.
It seems that on average, you're hitting your beats..
{ 
    - feedback == "VeryEarly":
    -> Feedback.VeryEarly
    - feedback == "SlightlyEarly":
    -> Feedback.SlightlyEarly
    - feedback == "SlightlyLate":
    -> Feedback.SlightlyLate
    - feedback == "VeryLate":
    -> Feedback.VeryLate
}
-> END

=== Feedback ===
= VeryEarly
...<color=#ff0000>way too early!</color>
Are you stressed out?
You should relax more.
-> END
= SlightlyEarly
...<color=#ff0000>just a little too early.</color>
Try TAPPING OUT the first six beats on a nearby surface.
And then calmly press your defibrillator using that rhythm you've built up!
You may not think it makes difference but it does.
-> END
= SlightlyLate
...<color=#ff0000>just a little too late.</color>
Make sure you're pushing it in exact time.
It's pretty strict but that's how it is.
-> END
= VeryLate
...<color=#ff0000>way too late!</color>
Are you really <color=red>sleepy?</color>
You should sleep more.
-> END



