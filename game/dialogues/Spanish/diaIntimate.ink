INCLUDE RDFunctions.ink

VAR type = "Passive"

=== Intro ===

Boy: "¡Doctor!"
Boy: "¡Tiene que ayudarme!"
Boy: "Mi corazón no se siente nada bien."
Boy: "..."

-> END


=== Interruption1 ===

DOTHIS { setSpeed(3) }
Paige: "¡¿Qué?!
Paige: Otro paciente insiste en que también lo atienda ahora mismo.
Paige: continúa, yo me encargo de este."

-> END


=== Interruption1_TwoPlayer ===

DOTHIS { setSpeed(3) }
Paige: "¡¿Qué?!
Paige: Otro paciente insiste en que también lo atienda ahora mismo.
Paige: Jugador 2...
Paige: ¡Hazte cargo de este!"

-> END

=== Interruption2 ===

Boy: <color=#FF9955>"¿Qué...?"</color>
Boy: <color=#FF9955>"Ella está..."</color>
Boy: <color=#FF9955>"..."</color>
Boy: <color=#FF9955>"¡Ella también está aquí!"</color>

-> END


=== InterruptionHard1 ===
DOTHIS { setSpeed(3) }
Paige: "¡¿Qué?!
Paige: Otro paciente insiste en que también lo atienda ahora mismo.
Paige: Bah... tú encárgate.
Paige: Voy a tomarme esta noche para descansar."

-> END


=== InterruptionHard2 ===

Boy: "¿Qué...?"
Boy: ".."
Boy: "¡¿Quién demonios es este?!"

-> END