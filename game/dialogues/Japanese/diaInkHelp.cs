
#if false

		square tags [] :
		vslow, slow, normal, fast, vfast

		// Just a reference doc 
		// setStyleFast
		story.BindExternalFunction ("setStyleShout", () =>
		{
			scrVfxControl.instance.Flash ();
			mTimePerChar = .01f;
		});

		// setStyleFast
		story.BindExternalFunction ("setStyleFast", () =>
		{
			mTimePerChar = .01f;
		});

		// setStyleNormal
		story.BindExternalFunction ("setStyleNormal", () =>
		{
			mTimePerChar = .05f;
		});
        
		// setStyleSlow
		story.BindExternalFunction ("setStyleSlow", () =>
		{
			mTimePerChar = .1f;
		});

		// flash
		story.BindExternalFunction ("flash", () =>
		{
				print("flashed via ink");
			scrVfxControl.instance.Flash ();
				return "flashhed";
		});

		// word by word
		story.BindExternalFunction ("setWordByWord", () =>
		{
			isWordByWord = true;
		});

		// shake cam
		story.BindExternalFunction ("shakeCam", (int jitterCount, int jitterAmount) =>
		{
			scrVfxControl.instance.ShakeCam (jitterCount, jitterAmount, -1);
		});

		// wait
		story.BindExternalFunction ("wait", (float seconds) =>
		{
			mWaitTime = seconds;
		});

		// sound playing
		story.BindExternalFunction ("playSound", (string soundName, float volume) =>
		{
			scrConductor.instance.PlayImmediately (soundName, volume);
		});

		// play animation
		story.BindExternalFunction ("animCharacter", (string cname, string animation) =>
		{
			var character = scrChar.Named (cname);
			character.PlayAnim (animation);
		});

		// play scrCharLevelSelect expression
		story.BindExternalFunction ("playExpression", (string goName, string expression) =>
		{
			var character = GameObject.Find(goName);
			character.GetComponent<scrCharLevelSelect>().PlayExpression(expression);
		});

		// play scrCharLevelSelect expression, delayed
		story.BindExternalFunction ("playExpressionD", (string goName, string expression, float delay) =>
		{
			DOVirtual.DelayedCall(delay, ()=>{
					print("delayed call! ");
				var character = GameObject.Find(goName);
				character.GetComponent<scrCharLevelSelect>().PlayExpression(expression);
			});

			WaitForAnimation(delay);
		});

		// params: move(string cname, float x, float y, float duration)
		story.BindExternalFunctionGeneral ("move", (object[] args) =>
		{
			MoveGameObject (
				(string)TryCoerce<string> (args [0]),
				(float)TryCoerce<float> (args [1]),
				(float)TryCoerce<float> (args [2]),
				(float)TryCoerce<float> (args [3])
			);

			return "";
		});

		story.BindExternalFunctionGeneral ("moveX", (object[] args) =>
		{
			MoveGameObject (
				(string)TryCoerce<string> (args [0]),
				(float)TryCoerce<float> (args [1]),
				0f,
				(float)TryCoerce<float> (args [2])
			);

			return "";
		});

		story.BindExternalFunctionGeneral ("moveY", (object[] args) =>
		{
			MoveGameObject (
				(string)TryCoerce<string> (args [0]),
				0f,
				(float)TryCoerce<float> (args [1]),
				(float)TryCoerce<float> (args [2])
			);

			return "";
		});


		// params: translate(string cname, float x, float y, float duration)
		story.BindExternalFunctionGeneral ("translate", (object[] args) =>
			{
				TranslateGameObject (
					(string)TryCoerce<string> (args [0]),
					(float)TryCoerce<float> (args [1]),
					(float)TryCoerce<float> (args [2]),
					(float)TryCoerce<float> (args [3])
				);

				return "";
			});

		story.BindExternalFunctionGeneral ("translateX", (object[] args) =>
			{
				TranslateGameObject (
					(string)TryCoerce<string> (args [0]),
					(float)TryCoerce<float> (args [1]),
					0f,
					(float)TryCoerce<float> (args [2])
				);

				return "";
			});

		story.BindExternalFunctionGeneral ("translateY", (object[] args) =>
			{
				TranslateGameObject (
					(string)TryCoerce<string> (args [0]),
					0f,
					(float)TryCoerce<float> (args [1]),
					(float)TryCoerce<float> (args [2])
				);

				return "";
			});


		// scaleX
		story.BindExternalFunction ("scaleX", (string goName, float x) =>
		{
			GameObject.Find(goName).transform.ScaleX(x);
		});


		// scaleY
		story.BindExternalFunction ("scaleY", (string goName, float y) =>
		{
			GameObject.Find(goName).transform.ScaleX(y);
		});
		

		// scaleXY
		story.BindExternalFunction ("scale", (string goName, float x, float y) =>
		{
			GameObject.Find(goName).transform.ScaleXY(x, y);
		});


		// darken backgrounds
		story.BindExternalFunction ("darkenBackgrounds", () =>
		{
			scrVfxControl.instance.DarkenBackgrounds (0, 0.5f, 0.7f);
		});

		// darken backgrounds
		story.BindExternalFunction ("lightenBackgrounds", () =>
		{
			scrVfxControl.instance.LightenBackgrounds (0, 0.5f);
		});


		// fade out
		story.BindExternalFunction ("fadeOut", () =>
		{
			scrVfxControl.instance.FadeOut();
		});

		// fade in
		story.BindExternalFunction ("fadeIn", () =>
		{
			scrVfxControl.instance.FadeIn();
		});
		

	
		// camera movement
		story.BindExternalFunction ("moveCam", (float x, float y, float duration) =>
		{
			WaitForAnimation(duration);
			var container = GameObject.Find ("Camera Container 0").transform;
			container.DOLocalMove (new Vector3 (x, y, container.localPosition.z), duration, true);
		});

		// setColor(r, g, b, a)
		story.BindExternalFunctionGeneral ("setColor", (object[] args) =>
		{
			SetTextColor (
				(float)TryCoerce<float> (args [0]),
				(float)TryCoerce<float> (args [1]),
				(float)TryCoerce<float> (args [2]),
				(float)TryCoerce<float> (args [3])
			);

			return "";
		});

		// camera movement
		story.BindExternalFunction ("setSpeed", (float timePerChar) =>
		{
			//print ("speed changed to " + timePerChar);
			mTimePerChar = timePerChar;
			return "";
		});


		// main flow control
		story.BindExternalFunction ("hidePanel", (float seconds) =>
		{	
			print("hidepanel: " + seconds);
			HideTemporarily(seconds);
		});

		story.BindExternalFunction ("waitForAnimations", () =>
		{	
			mWaitForAnimations = true;
		});

#endif