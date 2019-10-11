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

