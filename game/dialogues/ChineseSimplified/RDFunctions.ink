/*
Constants
*/

// ease curves
VAR Unset = "Unset"
VAR Linear = "Linear"
VAR InSine = "InSine"
VAR OutSine = "OutSine"
VAR InOutSine = "InOutSine"
VAR InQuad = "InQuad"
VAR OutQuad = "OutQuad"
VAR InOutQuad = "InOutQuad"
VAR InCubic = "InCubic"
VAR OutCubic = "OutCubic"
VAR InOutCubic = "InOutCubic"
VAR InQuart = "InQuart"
VAR OutQuart = "OutQuart"
VAR InOutQuart = "InOutQuart"
VAR InQuint = "InQuint"
VAR OutQuint = "OutQuint"
VAR InOutQuint = "InOutQuint"
VAR InExpo = "InExpo"
VAR OutExpo = "OutExpo"
VAR InOutExpo = "InOutExpo"
VAR InCirc = "InCirc"
VAR OutCirc = "OutCirc"
VAR InOutCirc = "InOutCirc"
VAR InElastic = "InElastic"
VAR OutElastic = "OutElastic"
VAR InOutElastic = "InOutElastic"
VAR InBack = "InBack"
VAR OutBack = "OutBack"
VAR InOutBack = "InOutBack"
VAR InBounce = "InBounce"
VAR OutBounce = "OutBounce"
VAR InOutBounce = "InOutBounce"
VAR Flash = "Flash"
VAR InFlash = "InFlash"
VAR OutFlash = "OutFlash"
VAR InOutFlash = "InOutFlash"

// panel sides
VAR Top = "Top"
VAR Bottom = "Bottom"

// dialogue types
VAR	Passive = "Passive"
VAR	Accelerable = "Accelerable" 
VAR	Active = "Active"



/*
Here goes all Rhythm Doctor external functions
*/

EXTERNAL multiply(x,y)

// movement without ease
EXTERNAL move(goName, x, y, duration)
EXTERNAL moveX(goName, x, duration)
EXTERNAL moveY(goName, y, duration)
EXTERNAL translate(goName, x, y, duration)
EXTERNAL translateX(goName, x, duration)
EXTERNAL translateY(goName, y, duration)
EXTERNAL moveCam(x, y, duration)
EXTERNAL translateCam(x, y, duration)

// movement with ease
EXTERNAL move_ease(goName, x, y, duration, ease)
EXTERNAL moveX_ease(goName, x, duration, ease)
EXTERNAL moveY_ease(goName, y, duration, ease)
EXTERNAL translate_ease(goName, x, y, duration, ease)
EXTERNAL translateX_ease(goName, x, duration, ease)
EXTERNAL translateY_ease(goName, y, duration, ease)
EXTERNAL moveCam_ease(x, y, duration, ease)
EXTERNAL translateCam_ease(x, y, duration, ease)

// scale
EXTERNAL scale(goName, x, y)
EXTERNAL scaleX(goName, x)
EXTERNAL scaleY(goName, y)


// animation
EXTERNAL playAnim(goName, anim)
EXTERNAL playExpression(goName, expression)
EXTERNAL playExpressionD(goName, expression, delay)

// vfx
EXTERNAL flash()
EXTERNAL fadeIn()
EXTERNAL fadeOut()

// text properties
EXTERNAL setColor(r, g, b, a)
EXTERNAL setSpeed(timePerChar)
EXTERNAL setWordByWord()
EXTERNAL setPanelSide(side)

// main flow control
EXTERNAL hidePanel(t)
EXTERNAL wait(t)
EXTERNAL waitForAnimations()
EXTERNAL runLevelMethod(methodName)
EXTERNAL setDialogueType(dialogueType)

// DUMMY DEFINITIONS
// inky requires them so it doesn't throw errors

=== function multiply(x,y) ===
~ return 999




// movement without ease

=== function move(goName, x, y, duration) ===
~ return "" 

=== function moveX(goName, x, duration) ===
~ return "" 

=== function moveY(goName, y, duration) ===
~ return "" 

=== function translate(goName, x, y, duration) ===
~ return "" 

=== function translateX(goName, x, duration) ===
~ return "" 

=== function translateY(goName, y, duration) ===
~ return "" 

=== function moveCam(x, y, duration) ===
~ return "" 

=== function translateCam(x, y, duration) ===
~ return "" 


// movement with ease

=== function move_ease(goName, x, y, duration, ease) === 
~ return "" 

=== function moveX_ease(goName, x, duration, ease) ===
~ return ""

=== function moveY_ease(goName, y, duration, ease) ===
~ return ""

=== function translate_ease(goName, x, y, duration, ease) ===
~ return ""

=== function translateX_ease(goName, x, duration, ease) ===
~ return ""

=== function translateY_ease(goName, y, duration, ease) ===
~ return ""

=== function moveCam_ease(x, y, duration, ease) ===
~ return ""

=== function translateCam_ease(x, y, duration, ease)  ===
~ return ""


// scale

=== function scale(goName, x, y) ===
~ return "" 

=== function scaleX(goName, x) ===
~ return "" 

=== function scaleY(goName, y) ===
~ return "" 



// animation

=== function playAnim(goName, anim) ===
~ return "" 

=== function playExpression(goName, expression) ===
~ return "" 

=== function playExpressionD(goName, expression, delay) ===
~ return "" 


// vfx
=== function flash() ===
~ return "" 

=== function fadeIn() ===
~ return "" 

=== function fadeOut() ===
~ return "" 

=== function setPanelSide(side) ===
~ return ""

// text properties


=== function setColor(r, g, b, a) ===
~ return ""

=== function setSpeed(timePerChar) ===
~ return ""

=== function setWordByWord() ===
~ return ""


// main flow control

=== function hidePanel(t) ===
~ return ""

=== function waitForAnimations() ===
~ return ""

=== function wait(t) ===
~ return ""

=== function runLevelMethod(methodName) ===
~ return ""

=== function setDialogueType(dialogueType) ===
~ return ""

