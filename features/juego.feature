Feature: Juego

Scenario: Selección correcta no resta vidas
	Given I open the web app
	When I select the right option
		And I press "Responder"
	Then I should see "CORRECTO!"
		And I should see "Vidas: 3"

Scenario: Selección incorrecta resta vidas
	Given I open the web app
	When I select an incorrect option
		And I press "Responder"
	Then I should see "INCORRECTO!"
		And I should see "Vidas: 2"

Scenario: Respuesta correcta habilita siguiente
	Given I open the web app
	When I select the right option
		And I press "Responder"
		And I press "Siguiente"
	Then I should see "¿De qué color es el caballo blanco de San Martin?"
