INCLUDE RDFunctions.ink

VAR type = "Passive"

VAR P1ControlName = "la tecla SHIFT IZQUIERDA"
VAR P2ControlName = "la tecla SHIFT DERECHA"
VAR AnyControlName = "SHIFT"

VAR P1ControlName_nx = "el botón ZL"
VAR P2ControlName_nx = "el botón ZR"
VAR AnyControlName_nx = "ZL o ZR"


=== expoTwoPlayer0 ===

{ setDialogueType(Active) }
Paige: Tú debes ser nuestro nuevo interno.
Paige: Trabajando desde una exposición de juegos, ¿no?
Paige: En nuestra escuela de medicina hay todo tipo de practicantes...

-> END


=== expoTwoPlayer1 ===

{ setDialogueType(Active) }

[DESKTOP] Paige: OK, Jugador 1, usa {P1ControlName}.
[NX] Paige: OK, Jugador 1, usa {P1ControlName_nx}.
[MOBILE] Paige: OK, Jugador 1, usa la parte izquierda de la pantalla.

Paige: Tú estás a cargo de los pacientes de la línea AZUL.

[DESKTOP] Paige: Jugador 2, usa {P2ControlName}.
[NX] Paige: Jugador 2, usa {P2ControlName_nx}.
[MOBILE] Paige: OK, Jugador 1, usa la parte derecha de la pantalla.

Paige: Tú encárgate de los pacientes de la línea ROJA.

[DESKTOP] Paige: Solo CUENTEN y presionen las teclas en el SÉPTIMO PULSO.
[NX] Paige: Solo CUENTEN y presionen el botón en el SÉPTIMO PULSO.
[MOBILE] Paige: Solo CUENTEN y toca la pantalla en el SÉPTIMO PULSO.

Paige: Jugador 1, ¡tú empiezas!

-> END





=== expoTwoPlayer1Miss ===

Paige: ¡Casi!

[DESKTOP] Paige: Prueba PRESIONANDO la tecla más fuerte.
[NX] Paige: Prueba presionando el gatillo más rápido.
[MOBILE] Paige: Prueba tocando la pantalla más rápido.

-> END


=== expoTwoPlayer1Perfect === 

Paige: '¡Mírate!'
Paige: Claramente ya sabes cómo hacerlo.
Paige: Felicitaciones.

-> END


=== expoTwoPlayer2 === 

Paige: Bien. Es turno del Jugador 2..

-> END

=== expoTwoPlayer3 === 

Paige: Excelente, sigan así.

-> END

=== expoTwoPlayer4 === 

Paige: Eso es. Una vez más, sin indicaciones.

-> END


=== expoTwoPlayer5 === 

{ setDialogueType(Active) }
Paige: Bien. Ya le cogiste el truco.
Paige: Tu primer paciente te espera afuera.
Paige: Él no está muy enfermo.
Paige: Solo que... es demasiado sentimental...
Paige: Buena suerte.

-> END


=== expoTwoPlayer1NoInput === 

Paige: Ay no.

[DESKTOP] Paige: Recuerda que tienes que presionar la tecla en el SÉPTIMO PULSO.
[NX] Paige: Recuerda que tienes que presionar el botón en el SÉPTIMO PULSO.
[MOBILE] Paige: Recuerda que tienes que tocar la pantalla en el SÉPTIMO PULSO.

-> END


=== expoTwoPlayer0NoInput === 

{ setDialogueType(Active) }

[DESKTOP] Paige: Oh, presiona {AnyControlName} para avanzar el texto.
[MOBILE] Paige: Oh, toca la pantalla para avanzar el texto.
[NX] Paige: Oh, toca {AnyControlName_nx} para avanzar el texto.

Paige: Muy bien.

-> END



=== expoTwoPlayer01Nurse === 

(Disculpa a la enfermera, ella es de China.)

-> END

=== expoTwoPlayerEveryBeat === 

Paige: ¡¡HEY!!

[DESKTOP] Paige: ¡No tienes que presionar en todos los pulsos! Solo en el SÉPTIMO.
[NX] Paige: ¡No tienes que presionar en todos los pulsos! Solo en el SÉPTIMO.
[MOBILE] Paige: ¡No tienes que tocar en todos los pulsos! Solo en el SÉPTIMO.
-> END






// UNUSED


=== expoTwoPlayer0NoInput_XXswitch === 

{ setDialogueType(Active) }
Paige: Oh, presiona {AnyControlName_nx} para avanzar el texto.
Paige: Muy bien.

-> END



=== expoTwoPlayer1_XXswitch ===

{ setDialogueType(Active) }
Paige: OK, Jugador 1, usa {P1ControlName_nx}.
Paige: Tú estás a cargo de los pacientes de la línea AZUL.
Paige: Jugador 2, usa {P2ControlName_nx}.
Paige: Tú encárgate de los pacientes de la línea ROJA.
Paige: Solo CUENTEN y presionen el botón en el SÉPTIMO PULSO.
Paige: Jugador 1, ¡tú empiezas!

-> END


