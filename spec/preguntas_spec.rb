require "./lib/PregResp.rb"

describe "Pregunta Respuesta" do 

 it "Validar pregunta con respuesta correcta devuelve Correcto" do
  pregresp = PregResp.new
	pregresp.set_preg_resp("¿De qué color es el caballo blanco de San Martín?", "Blanco")
  expect( pregresp.validar "Blanco" ).to eq "Correcto"
 end

 it "Validar pregunta con respuesta incorrecta devuelve Incorrecto" do
  pregresp = PregResp.new
	pregresp.set_preg_resp("¿De qué color es el caballo blanco de San Martín?", "Blanco")
  expect( pregresp.validar "Negro" ).to eq "Incorrecto"
 end

	it "Obtener pregunta devuelve pregunta seteada" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
		pregresp = PregResp.new
		pregresp.set_preg_resp(pregunta, "Blanco")
		expect( pregresp.get_pregunta ).to eq pregunta
	end

	it "Obtener respuesta devuelve respuesta seteada" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
		respuesta = "Blanco"
		pregresp = PregResp.new
		pregresp.set_preg_resp(pregunta, respuesta)
		expect( pregresp.get_respuesta ).to eq respuesta
	end
end
