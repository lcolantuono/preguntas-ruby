Feature: Preguntas

Scenario: Mostrar pregunta en portada
  Given I open the web app
  Then I should see "Pregunta"
    And I should see "¿"

Scenario: Responder bien ¿De que color es el caballo blanco de San Martin?
  Given I open the web app
  When I fill "respuesta" with "Blanco"
    And I press "Responder"
  Then I should see "Resultado"
    And I should see "Correcto"

Scenario: Responder mal ¿De que color es el caballo blanco de San Martin?
  Given I open the web app
  When I fill "respuesta" with "Negro"
    And I press "Responder"
  Then I should see "Resultado"
    And I should see "Incorrecto"
