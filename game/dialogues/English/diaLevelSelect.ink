VAR type = "active"



=== Level_OrientalTechno_Passed ===
Paige: Your patient is now noncommittal.
Paige: Like samurai should be.
Paige: That.. wasn't so bad.
-> END

=== Level_OrientalTechno_New ===
Paige: Here's your next patient in line.
Paige: Press the left and right keys to select different tiers.
Paige: And getting an A in a level unlocks its Night Shift mode.
Paige: Press the up or down keys to switch shifts.
Paige: Got it? GET AN A and up or down keys to see SPECIAL ADDITIONAL LEVELS.
Paige: We've unlocked the first Night Shift level for you just because. Check it out!
-> END


== backup ==
Welcome to the waiting room!
Paige: Here's your next patient in line.
Paige: Swipe left and right with your finger to select different tiers.
Paige: And getting an A in a level unlocks its Night Shift mode.
Paige: Hit the clock to switch shifts.
Paige: Got it? GET AN A and hit the clock to see SPECIAL ADDITIONAL LEVELS.
Paige: We've unlocked the first Night Shift level for you just because. Check it out!
-> END

=== Level_OrientalTechno_NotPassed ===
In a scale from 1 to 10 on how bad you played this level, you got 3... squared.
-> END

=== Level_Intimate_Passed ===
Your patient is now happy.
Looks like he found love in a hopeless place.
Good job!
-> END

=== Level_Intimate_New ===
Paige: Okay, this one looks a little serious.
Paige: Prepare yourself. Good luck.
-> END

=== Level_OrientalInsomniac_Passed ===
Paige: Man, antibiotic resistance sure has come far.
Paige: But you've contributed a point for us in this war.
Paige: Good job!
-> END

=== Level_OrientalInsomniac_New ===
Well, that's the end of the IndieCade demo.
You can keep on going, but be warned..
The rest in this corridor are meant to be later levels.
So they're going to get pretty challenging.
Thanks for playing this far!
Hit UP and DOWN to try special Night Shift levels if you haven't.
I hear they're pretty fun.
Now, back to Dr Paige..
Paige: Each patient has a distinctive sound to their heartbeats.
Paige: If you listen carefully, you'll be able to do your job with your eyes closed.
Paige: Some doctors find it that easier that way.
Paige: Well, see you in the ER.
-> END


=== Level_Oneshot_Passed ===
Congratulations!! You passed this samurai level
-> END

=== Level_Oneshot_New ===
This is the dialogue for the new level. I'm not very creative right now to put something mildly interesting here.
-> END


=== Level_8thDelay_Passed ===
Congratulations!! You passed this samurai level
-> END

=== Level_8thDelay_New ===
This is the dialogue for the new level. I'm not very creative right now to put something mildly interesting here.
-> END


=== Level_Barbra_Passed ===
Well that was quite the jump in difficulty.
But hey you did quite alright.
Good job!
-> END

=== Level_Barbra_New ===
Every day brings more patients, and our funding is drying up.
Regulations state Rhythm Doctors can't operate on more than three patients at once.
But when we find patients with similar enough heartrates.. 
..
They won't find out. I'm sure you can handle it.
-> END


=== Level_Steinway_Passed ===
Congratulations!
That should have been all the patients for now.
But there's just one more person you might be able to save today..
-> END

=== Level_Steinway_New ===
Dr Paige is a doctor at her breaking point.
Looks like she needs a little help on her ward round today..
Lucky you have your trusty remote-controlled defibrillator.
There sure are a lot of patients today though.
Good luck.
-> END


=== Level_Lesmis_Passed ===
Looks like Dr Paige has fallen asleep.
A brief respite before it all begins again.
Well, that's the true end of the Indiecade demo!
As we at the NHS search for LUCRATIVE SPONSORSHIPS..
You as a junior Rhythm Doctor are just going to have to sit tight.
You can always go back and try unlocking the Night Shift modes.
I hear they're pretty fun.
Thanks for playing!
-> END

=== Level_Lesmis_New ===
This is the dialogue for the new level. I'm not very creative right now to put something mildly interesting here.
-> END

=== Level_Kanye_Passed ===
He doesn't seem changed at all.
But inside he is happier. Good job!
At this point in the course..
..you would normally be transferred to the Supraventricular Tachycardia ward.
It's through the corridor on your left.
But that section isn't completely ready right now..
..So you can stay in this ward instead.
-> END

=== Level_Kanye_New ===
Each patient has a distinctive sound to their heartbeats.
If you listen carefully, you'll be able to do your job with your eyes closed.
Some doctors find it that easier that way.
Well, see you in the ER.
-> END




//
// OpeningCreds
//

VAR feedback = ""
VAR mistakeCount = 0

=== OpeningCredsIntro ===
//WIP
Ian: H-hey, you're back!
Ian: According to the evaluation, you were pressing...
{ 
    - mistakeCount == 0:
    -> OpeningCredsFeedback.Perfect
    - feedback == "SlightlyEarly" || feedback == "VeryEarly" :
    -> OpeningCredsFeedback.Early
    - feedback == "SlightlyLate" || feedback == "VeryLate":
    -> OpeningCredsFeedback.Late
}

-> END

=== OpeningCredsFeedback ===

= Perfect
Ian: Wow, <color=#a0ffc4>exactly on time!</color>
Ian: [fast]<color=#ffffff70>..I'd wish I had done that well on my own exam..</color>
-> LastPart

= Early
Ian: ..just a <color=#e23314>little too early.</color>
Paige: Try slamming your spacebar harder.
-> LastPart

= Late
Ian: ..a <color=#e23314>little too late?</color>
Paige: That’s pretty unusual.
Ian: C-congratulations on being unusual!
-> LastPart


= LastPart
Ian: Anyway, this is the waiting room!
Ian: Mr. Grey hasn't shown up yet..
Ian: S-so I'll just have to show you around.
Ian: You can start with this patient here.
Ian: He's got quite the heart rate..
-> END
