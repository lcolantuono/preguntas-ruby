require "./lib/PregResp.rb"
require "./lib/PregMultiple.rb"

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

  it "Validar pregunta con opción multiple con respuesta correcta devuelve Correcto" do
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple("¿De qué color es el caballo blanco de San Martín?", ["Blanco", "Negro", "Azul"], 0)
    expect( preg_multiple.validar 0 ).to eq "Correcto"
  end

  it "Validar pregunta con opción multiple con respuesta incorrecta devuelve Incorrecto" do
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple("¿De qué color es el caballo blanco de San Martín?", ["Blanco", "Negro", "Azul"], 0)
    expect( preg_multiple.validar 2 ).to eq "Incorrecto"
  end

  it "Obtener pregunta de Pregunta Multiple" do
    pregunta = "¿De qué color es el caballo blanco de San Martín?"
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, ["Blanco", "Negro", "Azul"], 0)
    expect( preg_multiple.get_pregunta ).to eq pregunta
  end

  it "Obtener respuestas de Pregunta Multiple" do
    pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    expect( preg_multiple.get_respuestas ).to eq respuestas
  end
end
