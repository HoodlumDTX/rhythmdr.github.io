INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38

VAR P1ControlName = "spacebar"

//story stuff
VAR mistakesMade = 0
VAR timesMissed = 0

=== intro ===
    Ian: Oh!
    ~ timesMissed++
    Ian: Y-you must be the new intern.
    Ian: I'm s-supposed to give you a tutorial.. {timesMissed > 1 : More than one | just one }
    ~ timesMissed++
    Ian: ..but I'm kind of busy with this game.. {timesMissed > 1 : xxMore than one | xxjust one }
    Ian: Dr Paige can help you out.
    Paige: Ian, you're useless.
-> END

