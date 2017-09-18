INCLUDE RDFunctions.ink

VAR type = "active"
VAR position = "top"

VAR Ian = "Ian"
VAR Farmer = "Farmer"
VAR Row = "Row 1"
VAR FarmerPosX = 215
VAR RowX = 420
VAR FarmerPosY = -38

=== part1 ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Bottom)}
    Ian: ¡Aaah!
    Ian: T-tú debes ser el nuevo interno que reclutaron en el <color=#00aeff>Perú Game Expo.</color>
    Ian: ¡N-no me hagas caso!
    Ian: Se supone que... tenía que enseñarte cómo funcionan las cosas aquí...
    Ian: ...pero ahora estoy un poco ocupado con este juego.
    Ian: Es una clasificatoria a-así que no puedo pausarla...
    Ian: Lo siento...
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: Tu paciente te espera allá.
    Ian: La Dra. Paige puede darte una mano.
    Ian: (Ella no está jugando una partida clasificatoria...)
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1.5)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Ian, eres un inútil.
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
    DOTHIS {wait(1)}
    DOTHIS {translate_ease(Farmer, 0.0, -FarmerPosY, 0.5, OutQuad)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {moveX(Row, RowX, 0.0)} 
    DOTHIS {moveX(Farmer, -1000.0, 0.0)} //Disappear dummy
    DOTHIS {waitForAnimations()}
-> END


=== part2ish ===
    
    //DOTHIS {setDialogueType(Passive)}
    //DOTHIS {setPanelSide(Top)}
    //Ian: ¡Solo presiona la barra espaciadora en el <color=#ff0000>séptimo</color> pulso!
    //DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    //DOTHIS {waitForAnimations()}
    Paige: Bueno, tú, desde tu computadora.
    Paige: Te han reclutado en una... ¿exposición de juegos?
    Ian: ¡Qué original!
    Paige: Bueno, donde sea que estés...
    Paige: ...tú curas a tus pacientes presionando la barra espaciadora en el <color=#ff0000>séptimo</color> pulso.
    Paige: ¿Quedó claro? El <color=#ff0000>séptimo</color> pulso.
    Paige: ¡Empecemos!
    DOTHIS {runLevelMethod("ShowTutorial")}
-> END


=== part2 ===
    //after tutorial
    DOTHIS {runLevelMethod("ShowBasement")}
    DOTHIS {move(Ian, 141, -35, 0.0)}
    DOTHIS {fadeIn()}
    DOTHIS {wait(1)}
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {translateX(Ian, 100, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {playExpression(Ian, "sighing")}
    DOTHIS {setPanelSide(Top)}
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Bueno.
    Paige: Es hora de tu primer reto verdadero.
    Ian: ¡So-solo manténte en calma, y sigue contando hasta siete!
    Ian: ¡Sin importar lo que pase!
    DOTHIS {fadeOut()}
-> END


=== tutorial0 ===
    Ian: Tú debes ser el nuevo estudiante.
    Ian: Trabajando desde casa, ¿eh?
    Ian: Bueno, no te equivoques, esto aún no va a ser fácil.
    Ian: Después de todo, aún sigues en la escuela de medicina.
-> END


=== tutorial1 ===
    Ian: Bien, tomaremos las cosas con calma.
    Ian: ¡Aaah!
    Ian: Aquí está tu primer paciente. ¡Buena suerte!
-> END

=== tutorial2 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Bien.
-> END

=== tutorial3 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Excelente, sigue así.
-> END

=== tutorial4 ===
    DOTHIS {setDialogueType(Passive)}
    Paige: ¡Eso es! Una vez más, ahora sin indicaciones.
-> END

=== tutorial5 ===
    Paige: Has cogido el truco.
    Ian: ¡Felicitaciones!
-> END

=== tutorial1Miss ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Casi.
    Ian: Intenta presionando la barra espaciadora CON FUERZA.
    Ian: Escucha el sonido de la tecla. 
    Ian: Eso te ayudará a contar los pulsos.
-> END

=== tutorial1Perfect ===
    DOTHIS {setDialogueType(Passive)}
    Paige: Oh, mírate. 
    Paige: Se nota que ya sabes cómo hacer esto.
-> END


=== tutorial1NoInput ===
    DOTHIS {setDialogueType(Passive)}
    Paige: ¡Ay, no!
    Paige: Recuerda presionar la barra espaciadora en el SÉPTIMO PULSO.
-> END

=== tutorial0NoInput ===
    Ian: Oh, presiona la barra espaciadora para pasar el texto.
    Ian: Allá vamos.
    Ian: Seguro ya debes saber este tipo de cosas.
-> END

=== 01Nurse ===
    //DOTHIS {setDialogueType(Passive)}
    Ian: (Disculpa a la enfermera, es de China.)
-> END



=== EveryBeat ===
    DOTHIS {setDialogueType(Passive)}
    Paige: ¡No en todos los pulsos!
    Paige: Solo en el SÉPTIMO PULSO.
-> END


//-----------BACKUPS---------------------

=== part1_backup ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Top)}
    Paige: Hey Ian!
    Paige: Why are you...? 
    Paige_RedNose: Why don't you show me this new method of treating patients?
    Ian: Yup! Come over here.
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {playExpression(Ian,"running")}
    DOTHIS {moveX_ease(Ian, 40, 2, Linear)}
    DOTHIS {translateCam_ease(127, 0, 2, Linear)}
    DOTHIS {waitForAnimations()} 
    DOTHIS {playExpression (Ian,"explaining")}
    Ian: This guy was walking near the hospital, and volunteered as a tester!
    Ian: I'm gonna turn the defribilator on from my computer, and then i'll guide you from there. 
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, -1)}
    DOTHIS {translateX(Ian, -100, 1)}
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {wait(1)}
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {move(Farmer, -1000, 0, 0.0)} //Disappear it
    DOTHIS {moveX(Row, RowX, 0.0)}
    DOTHIS {translate(Row, 0, FarmerPosY, 0.0)}
    DOTHIS {waitForAnimations()}
    Ian: Ok cue the music!
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
-> END

=== part1_NOTEXPO ===
    
    DOTHIS {move(Farmer, FarmerPosX, FarmerPosY, 0)}
    DOTHIS {setPanelSide(Top)}
    Ian: Oh!
    Ian: You're finally here!
    Ian: Y-you must be the new intern.
    Ian: D-don't mind me..
    Ian: We were waiting for so long..
    Ian: ..that I started a game..
    Ian: It's a ranked match s-so I can't quit..
    Ian: I'm sorry..
    //Ian: Ok, let's start the rhythm defribilator test.
    DOTHIS {scaleX(Farmer, -1)}
    DOTHIS {waitForAnimations()} 
    Ian: Your patient's over there.
    Ian: Dr Paige can help you out.
    Ian: (She's not playing a ranked match..)
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {waitForAnimations()}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Ian, you're useless.
    Ian: I-it helps my anxiety!
    Ian: (Excuse me a m-moment..)
    Ian: [shout]MID OR AFK SCRUB
    Paige: [0.4]Sigh..
    DOTHIS {scaleX(Farmer, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("CreateRow")}
    DOTHIS {move(Farmer, -1000, 0, 0.0)} //Disappear it
    DOTHIS {moveX(Row, RowX, 0.0)}
    DOTHIS {translate(Row, 0, FarmerPosY, 0.0)}
    DOTHIS {waitForAnimations()}
    DOTHIS {runLevelMethod("PlayTutorialMusic")}
-> END

=== part2ish_NOTEXPO ===
    
    //DOTHIS {setDialogueType(Passive)}
    //DOTHIS {setPanelSide(Top)}
    //Ian: Just press space on the <color=#ff0000>seventh</color> beat!
    DOTHIS {translate_ease(Row, 0, -FarmerPosY, 0.5, OutQuad)}
    DOTHIS {waitForAnimations()}
    Paige: Alright, you behind your computer.
    Paige: I don't know who you are.
    Paige: But if you want to join our Rhythm Doctor program..
    Paige: You'll have to impress Mr Grey in the evaluation.
    Paige: Here's your first patient.
    Paige: Just slam your space bar on the <color=#ff0000>seventh</color> beat.
    Paige: Here we go.
    DOTHIS {runLevelMethod("ShowTutorial")}
    
-> END

=== part2_NOTEXPO ===
    //after tutorial
    DOTHIS {runLevelMethod("ShowBasement")}
    DOTHIS {move(Ian, 141, -35, 0.0)}
    DOTHIS {fadeIn()}
    DOTHIS {wait(1)}
    DOTHIS {playExpression(Ian, "running")}
    DOTHIS {scaleX(Ian, 1)}
    DOTHIS {translateX(Ian, 100, 1)}
    DOTHIS {waitForAnimations()}
    DOTHIS {playExpression(Ian, "sighing")}
    DOTHIS {setPanelSide(Top)}
    DOTHIS {moveCam_ease(352, 0, 3, InOutQuad)}
    DOTHIS {setPanelSide(Bottom)}
    Paige: Alright.
    Paige: It's time for your evaluation.
    Ian: J-just stay calm, and remember to press on the seventh beat!
    DOTHIS {fadeOut()}
-> END

