
/*
Latency Demo Test
7th Beat Games
*/


//// Constants
var CharacterY = 55

//// Variables

var mBackgrounds = [];
var mCharacter
var mObstacles = [];

// Game

var mHasGameStarted
var mGameTime
var mGameOver
var mGameOverTime

var Font = "RDFont"
var mScore = 0;


//// Methods

// Engine game loop methods

function start()
{
	setup()
}


var mJumpStart = 0
var mJumping = false
var JumpTime = 0.5 
var JumpHeight = 50

function normalizedParabola(t)
{
	return 4 * t - 4 * t * t;
}


function logic()
{
	mGameTime += mDeltaTime;

	// camera
	var CameraSpeed = 200;
	cameraPosition.x += mDeltaTime * CameraSpeed;
	
	// character
	var FrameSpeed = 10;
	var Frames = 4;
	mCharacter.x = cameraPosition.x + 60;
	mCharacter.frameColumn = Math.floor((mGameTime * FrameSpeed) % Frames) ;

	// backgrounds
	mBackgrounds.forEach(function(element) {
    	element.logic();
	});

	mObstacles.forEach(function(element) {
    	element.logic();
	});

	// score
	mScore = Math.floor(mGameTime)

	// input
	var SpaceKey = 32
	if(mKeyPressed == SpaceKey)
	{
		if(!mJumping)
		{
			mJumping = true
			mJumpStart = mTime
		}	
	}

	if(mJumping)
	{
		var jumpTimeElapsed = mTime - mJumpStart
		if(jumpTimeElapsed > JumpTime)
		{
			mJumping = false;
		}
		else
		{
			mCharacter.y = CharacterY - normalizedParabola(jumpTimeElapsed / JumpTime) * JumpHeight
		}
	}
	
	if(!mJumping)
	{
		mCharacter.y = CharacterY	
	}



}


function draw()
{	
	mBackgrounds.forEach(function(element) {
    	element.draw();
	});

	mObstacles.forEach(function(element) {
    	element.draw();
	});	

	mCharacter.draw()

	/*
	drawText("score: " + mScore, 
		vector2(100, 50), 
		12, 
		"left", 
		rgba(255,255,255,255), 
		Font
	)
	*/
}




function setup()
{
	mHasGameStarted = false
	mGameTime = 0
	mGameOver = false
	mGameOverTime = 0
	mTimeSinceLastElementCreated = 0

	mTimeScale = 1

	// backgrounds
	var BackgroundY = -30
	var BackgroundWidth = 510
	var BackgroundHeight = 148

	for(var i = 0; i < 3; i++)
	{
		var bg = new Sprite("bg2x.png")
		bg.y = BackgroundY;
		bg.scale = vector2(0.5, 0.5)
		bg.frameSize = vector2(510*2, 148*2)
		bg.logic = (function(n, bgRef)	{
			return function () {
				bgRef.x = Math.floor(Math.floor(cameraPosition.x / (bgRef.frameSize.x * 0.5) + n) * (bgRef.frameSize.x * 0.5))
			}
		})(i, bg);
		

		mBackgrounds.push(bg)
	}

	
	// character
	mCharacter = new Sprite("ian2x.png")
	mCharacter.frameSize = vector2(32*2, 37*2)
	mCharacter.x = 60
	mCharacter.y = CharacterY
	mCharacter.frameRow = 2;
	mCharacter.frameColumn = 1;
	mCharacter.scale = vector2(0.5, 0.5);

	// obstacles

	for(var i = 0; i < 10; i++)
	{
		var obstacle = new Sprite("MrStevenson.png")
		obstacle.x = (i + 2) * 400
		obstacle.y = 54
		obstacle.frameSize = vector2(40,40)

		obstacle.logic = (function(n, bgRef)	{
			return function () {
				var distance = 400
				bgRef.x = Math.floor(Math.floor(cameraPosition.x / distance + n) * distance)
			}
		})(i, obstacle);

		mObstacles.push(obstacle);
	}
}





function newGame()
{
	
}



function gameOver()
{

}



// Debugging methods

function DEBUG_roundedDigits(n)
{
	return Math.floor(n * 100) / 100
}