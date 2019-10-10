Feature: Preguntas Multiples

Scenario: Validar seleccion correcta
	Given I open the web app
	When I select the right option
		And I press "Responder"
	Then I should see "Resultado"
    And I should see "Correcto"

Scenario: Validar seleccion incorrecta
	Given I open the web app
	When I select an incorrect option
		And I press "Responder"
	Then I should see "Resultado"
    And I should see "Incorrecto"


