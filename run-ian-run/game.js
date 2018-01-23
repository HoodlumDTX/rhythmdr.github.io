
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


var InvalidTime = -1
var mFlashTime = InvalidTime
var FlashDuration = 0.5

function cameraDraw()
{
	if(mFlashTime == InvalidTime)
		return

	if(mFlashTime < FlashDuration)
	{
		mFlashTime += mDeltaTime
		var t = mFlashTime / FlashDuration;
		var f = (1 - t*t) 
		drawRect(rect(0,0,mScreen.width, mScreen.height), rgba(255,255,255, f), rgba(0,0,0,0))
	}
	else
	{
		mFlashTime = InvalidTime
	}

}

function flash()
{
	mFlashTime = 0
}

function logic()
{
	mGameTime += mDeltaTime;
	var SpaceKey = 32

	if(!mGameOver)
	{
		// camera
		var CameraSpeed = 200;
		cameraPosition.x = mTime * CameraSpeed;
		
		// character
		mCharacter.fps = 10
		var Frames = 4;
		mCharacter.frameRow = 2;
		mCharacter.x = cameraPosition.x + 60;
		mCharacter.frameColumn = Math.floor((mGameTime * mCharacter.fps) % Frames) ;

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
		
		if(mKeyPressed == SpaceKey || mMouseDown == true)
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

		checkCollisions()
	}
	else
	{
		// character
		mCharacter.fps = 5
		var Frames = 5;
		mCharacter.frameRow = 0;
		mCharacter.x = cameraPosition.x + 60;
		mCharacter.frameColumn = Math.floor((mGameTime * mCharacter.fps) % Frames);

		// input
		if(mKeyPressed == SpaceKey || mMouseDown == true)
		{
			newGame()	
		}
	}


}

function checkCollisions()
{
	for(var i = 0; i < mObstacles.length; i++)
	{
		var oRef = mObstacles[i]
		if(isRectInsideRect(mCharacter.worldCollision(), oRef.worldCollision()))
		{
			showGameOver()
			break;
			
		}
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

	cameraDraw();

	if(!mGameOver)
	{	
		SetText("Score: " + mScore + "<br/>[Press SPACE to jump]<br/>")
	}
}

function SetText(text)
{
	document.getElementById("score").innerHTML = text;
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
	//mCharacter.drawCollision = true
	mCharacter.collision = rect(0.21, 0.1, 0.53, 0.84)

	// obstacles
	for(var i = 0; i < 10; i++)
	{
		var obstacle = new Sprite("MrStevenson.png")
		obstacle.x = (i + 2) * 400
		obstacle.y = 54
		obstacle.frameSize = vector2(80,80)
		obstacle.scale = vector2(0.5, 0.5)
		//obstacle.drawCollision = true
		obstacle.collision = rect(0.08, 0.2, 0.78, 0.64)

		obstacle.logic = (function(n, oRef)	{
			return function () {
				var distance = 400
				oRef.x = Math.floor(Math.floor(cameraPosition.x / distance + n) * distance)
			}
		})(i, obstacle);


		mObstacles.push(obstacle);
	}
}

function showGameOver()
{
	mGameOver = true
	SetText("GAME OVER! - Score: " + mScore + "<br/>[Press SPACE to restart]<br/>")
	mCharacter.y = CharacterY
	flash()
	setObstaclesVisible(false)

	
}

function newGame()
{
	flash()
	mGameOver = false;
	cameraPosition.x = 0
	mGameTime = 0
	setObstaclesVisible(true)
}

function setObstaclesVisible(visible)
{
	for(var i = 0; i < mObstacles.length; i++)
	{
		mObstacles[i].visible = visible
	}
}

// Debugging methods

function DEBUG_roundedDigits(n)
{
	return Math.floor(n * 100) / 100
}