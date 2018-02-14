
/*
Latency Demo Test
7th Beat Games
*/


//// Constants
var FloorY = 170
var CharacterWidth = 24
var CharacterY = FloorY - CharacterWidth
var DoThisToJump = "Avoid the red squares! Press the spacebar to jump."
//// Variables

var mBackgrounds = [];
var mCharacter
var mObstacles = [];

// Game

var mHasGameStarted
var mGameTime
var mGameOver
var mGameOverTime
var mLatencyMilliseconds = 0
var mLatencyCounter = 0 
var mScore = 0;
var mSpaceBarTextIndication = DoThisToJump

//// Methods

// Engine game loop methods

function start()
{
	setup()
}


var mJumpStart = 0
var mJumping = false
var JumpTime = 0.5 
var JumpHeight = 80

function normalizedParabola(t)
{
	return 4 * t - 4 * t * t;
}


var InvalidTime = -1
var mFlashTime = InvalidTime
var FlashDuration = 0.3

function cameraDraw()
{
	if(mFlashTime == InvalidTime)
		return

	if(mFlashTime < FlashDuration)
	{
		mFlashTime += mDeltaTime
		var t = mFlashTime / FlashDuration;
		var f = (1 - t * t) 

		drawRect(
			rect(0,0,mScreen.width, mScreen.height), 
			rgba(255,255,255, f), 
			rgba(0,0,0,0)
		)
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
	var LeftArrowKey = 37
	var RightArrowKey = 39

	var LatencyIncrement = 20
	if(mKeyPressed == LeftArrowKey)
	{
		mLatencyMilliseconds -= LatencyIncrement

		if(mLatencyMilliseconds < 0)
			mLatencyMilliseconds = 0
	}
	else if(mKeyPressed == RightArrowKey)
	{
		mLatencyMilliseconds += LatencyIncrement
	}



	if(!mGameOver)
	{
		// camera
		var CameraSpeed = 280;
		cameraPosition.x = mGameTime * CameraSpeed;
		
		// character
		mCharacter.fps = 10
		var Frames = 4;
		mCharacter.frameRow = 2;
		mCharacter.x = cameraPosition.x + 60;
		mCharacter.frameColumn = Math.floor((mGameTime * mCharacter.fps) % Frames) ;


		mObstacles.forEach(function(element) {
	    	element.logic();
		});

		// score
		mScore = Math.floor(mGameTime)

		// input
		
		if(mKeyPressed == SpaceKey || mMouseDown == true)
		{
			if(mLatencyMilliseconds == 0)
			{
				jump()
			}
			else if(mLatencyCounter <= 0)
			{
				mLatencyCounter = mLatencyMilliseconds;
			}
		}

		if(mLatencyCounter > 0)
		{
			mLatencyCounter -= mDeltaTime * 1000; 

			if(mLatencyCounter <= 0)
			{
				jump()
				mLatencyCounter = 0
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
		mCharacter.x = cameraPosition.x + 60;
		mCharacter.frameColumn = Math.floor((mGameTime * mCharacter.fps) % Frames);

		// input
		if(mKeyPressed == SpaceKey || mMouseDown == true)
		{
			newGame()	
		}
	}
}

function jump()
{
	if(!mJumping)
	{
		mJumping = true
		mJumpStart = mTime
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
	// mBackgrounds.forEach(function(element) {
 //    	element.draw();
	// });

	mObstacles.forEach(function(element) {
    	element.draw();
	});	

	mCharacter.draw()

//floor
	drawRect(
		rect(0, FloorY, mScreen.width, 200), 
		ColorWhite, 
		ColorGrey
	)
	
	/*
	drawText("mLatencyCounter: " + mLatencyCounter,
		vector2(100, 50), 
		12, 
		"left", 
		rgba(0,0,0,255), 
		'Arial'
	)
	*/

	var TextColor = rgba(40, 40, 40, 1)
	drawText(mSpaceBarTextIndication, vector2(20, 35), 12, "left", TextColor, 'Arial')
	drawText("Use the left and right arrow keys to change the latency.", vector2(20, 55), 12, "left", TextColor, 'Arial')
	
	// Latency
	var latencyX = 650;
	drawText("Latency", vector2(latencyX, 35), 14, "center", TextColor, 'Arial')
	drawText("" + mLatencyMilliseconds + " ms", vector2(latencyX, 70), 14, "center", TextColor, 'Arial')
	
	var DisabledColor = rgba(180, 180, 180, 1)
	var arrowLeftColor = mLatencyMilliseconds > 0 ? TextColor : DisabledColor
	
	drawText("\u21E6", vector2(latencyX - 70, 70), 14, "center", arrowLeftColor, 'Arial')
	roundRect(mContext, latencyX - 85, 48, 30, 30, 4, false, arrowLeftColor)
	

	drawText("\u21E8", vector2(latencyX + 70, 70), 14, "center", TextColor, 'Arial')
	roundRect(mContext, latencyX + 55, 48, 30, 30, 4, false, TextColor)
	

	// score
	var TextColor2 = rgba(100, 100, 100, 1)
	drawText("Score: " + mScore, vector2(mScreen.width - 100 , mScreen.height - 16), 14, "left", TextColor2, 'Arial')

	cameraDraw();
}

function roundRect(ctx, x, y, width, height, radius, fill, stroke) {
  if (typeof stroke == 'undefined') {
    stroke = true;
  }
  if (typeof radius === 'undefined') {
    radius = 5;
  }
  if (typeof radius === 'number') {
    radius = {tl: radius, tr: radius, br: radius, bl: radius};
  } else {
    var defaultRadius = {tl: 0, tr: 0, br: 0, bl: 0};
    for (var side in defaultRadius) {
      radius[side] = radius[side] || defaultRadius[side];
    }
  }
  ctx.beginPath();
  ctx.moveTo(x + radius.tl, y);
  ctx.lineTo(x + width - radius.tr, y);
  ctx.quadraticCurveTo(x + width, y, x + width, y + radius.tr);
  ctx.lineTo(x + width, y + height - radius.br);
  ctx.quadraticCurveTo(x + width, y + height, x + width - radius.br, y + height);
  ctx.lineTo(x + radius.bl, y + height);
  ctx.quadraticCurveTo(x, y + height, x, y + height - radius.bl);
  ctx.lineTo(x, y + radius.tl);
  ctx.quadraticCurveTo(x, y, x + radius.tl, y);
  ctx.closePath();
  if (fill) {
    ctx.fill();
  }
	ctx.strokeStyle = rgbaToString(stroke)
	ctx.stroke();
  

}




function setup()
{
	mHasGameStarted = false
	mGameTime = 0
	mGameOver = false
	mGameOverTime = 0
	mTimeSinceLastElementCreated = 0

	mTimeScale = 1


	
	// character
	mCharacter = new Sprite("")
	mCharacter.frameSize = vector2(CharacterWidth, CharacterWidth)
	mCharacter.x = 60
	mCharacter.y = CharacterY
	mCharacter.fillColor = rgba(111, 193, 214, 1)
	//mCharacter.drawCollision = true
	//mCharacter.collision = rect(0.21, 0.1, 0.53, 0.84)

	var spacing = 450
	// obstacles
	for(var i = 0; i < 10; i++)
	{
		var obstacle = new Sprite("")
		obstacle.x = (i) * spacing
		
		obstacle.frameSize = vector2(30,30)
		obstacle.fillColor = rgba(234, 35, 0, 1)
		obstacle.y = FloorY - obstacle.frameSize.y

		obstacle.drawCollision = false

		obstacle.logic = (function(n, oRef)	{
			return function () {
				var distance = spacing
				oRef.x = Math.floor(Math.floor(cameraPosition.x / distance + n) * distance)
			}
		})(i, obstacle);


		mObstacles.push(obstacle);
	}

}

function showGameOver()
{
	mGameOver = true
	mSpaceBarTextIndication = "Avoid the red squares! Press the spacebar to start."
	//SetText("GAME OVER! - Score: " + mScore + "<br/>[Press SPACE to restart]<br/>")
	mCharacter.y = CharacterY
	flash()
	setObstaclesVisible(false)

	
}

function newGame()
{
	mSpaceBarTextIndication = DoThisToJump
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