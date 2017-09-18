INCLUDE RDFunctions.ink

VAR type = "Passive"

VAR P1ControlName = "左SHIFTキー"
VAR P2ControlName = "右SHIFTキー"
VAR AnyControlName = "SHIFT"

=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
"君らは新しく来た学生たちだね。
ゲームイベントから参加しただと？
うちらの学校、人様々だ..."

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }
"それでは、プレーヤー１は<color=#ff0000>{ P1ControlName }</color>を使いなさい。
君は青線の担当だ。
プレーヤー２は<color=#ff0000>{ P2ControlName }</color>を使いなさい。
君は赤線の担当だ。
7拍子目のビートを押しなさい。
プレーヤー１、君から始まる！"

-> END


=== expoTwoPlayer1Miss ===

もうすぐだぞ！
力を入れてキーを打ってみて！

-> END


=== expoTwoPlayer1Perfect === 

おぉ、いいじゃないか。
君はすでにやり方を心得ているだね。
おめでとう。

-> END


=== expoTwoPlayer2 === 

"よし、それではプレーヤー２..."

-> END

=== expoTwoPlayer3 === 

すばらし、この調子で頑張ろう。

-> END

=== expoTwoPlayer4 === 

いよいよだ。指示なしでもう一度やって見るぞ。

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
よし、君は要領をつかまったそうだ。
君の初めての患者は外で待っているぞ。
彼は病気ではないが。
ただ重度の悲しみに苦しんでいる。
それでは、頑張ろう。

-> END


=== expoTwoPlayer1NoInput === 

あら。
忘れずに7拍子目のビートを押すんだ。

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }
おぉ、<color=#ff0000>{ AnyControlName }</color>を押して、テキストを進めるだ。
行くぞ。

-> END


=== expoTwoPlayer01Nurse === 

(看護士を許してくれ、彼女は中国人だ。)

-> END

=== expoTwoPlayerEveryBeat === 

おい！
すべてのビートを押すな！7拍子目のビートだけだ！

-> END