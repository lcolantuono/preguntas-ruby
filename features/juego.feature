Feature: Juego

Scenario: Selección correcta no resta vidas
	Given I open the web app
	When I select the right option
		And I press "Responder"
	Then I should see "CORRECTO!"
		And I should see the image "vidas3.png"

Scenario: Selección incorrecta resta vidas
	Given I open the web app
	When I select an incorrect option
		And I press "Responder"
	Then I should see "INCORRECTO!"
		And I should see the image "vidas2.png"

Scenario: Respuesta correcta habilita siguiente
	Given I open the web app
	When I select the right option
		And I press "Responder"
		And I press "Siguiente"
	Then I should see "¿De qué color es el caballo blanco de San Martin?"

Scenario: Selección incorrecta 3 veces, Game Over
	Given I open the web app
	When I select an incorrect option
		And I press "Responder"
		And I select an incorrect option
		And I press "Responder"
		And I select an incorrect option
		And I press "Responder"
	Then I should see "GAME OVER!"

Scenario: Poder volver a jugar luego de perder
	Given I open the web app
	When I select an incorrect option
		And I press "Responder"
		And I select an incorrect option
		And I press "Responder"
		And I select an incorrect option
		And I press "Responder"
	Then I should see "Volver a jugar"

Scenario: Poder pedir ayuda en una pregunta
	Given I open the web app
	When I press "Ayuda"
	Then I should see "ELIMINADA"

