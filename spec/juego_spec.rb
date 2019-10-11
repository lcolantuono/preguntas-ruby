require "./lib/Juego.rb"

describe "Juego Preguntas" do
  it "Crear juego con preguntas multiples" do
    pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
    expect( juego.get_preguntas[0] ).to eq preg_multiple
  end

  it "Obtener primer pregunta" do
    pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
    expect( juego.get_preguntas[0].get_pregunta ).to eq preg_multiple.get_pregunta
  end

	it "Crear juego inicializa con 3 vidas" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
    expect( juego.get_vidas ).to eq 3
	end

	it "Al responder incorrecto resta una vida" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
		juego.responde_mal
    expect( juego.get_vidas ).to eq 2
	end

  it "Al responder no resta vidas" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
		juego.responde_bien
    expect( juego.get_vidas ).to eq 3
	end

	it "Al responder 3 veces mal Game Over" do
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
		juego.responde_mal
		juego.responde_bien
		juego.responde_mal
		juego.responde_mal
    expect( juego.get_vidas ).to eq 0
	end

	it "Obtener la siguiente pregunta luego de responder bien" do
		pregunta = "En una pecera había 10 peces, 2 se ahogaron y 3 se fueron nadando, ¿Cuántos peces quedaron?"
    respuestas = ["5", "8", "10"]
		preg_multiple = PregMultiple.new
		preg_multiple.set_preg_multiple(pregunta, respuestas, 3)
		pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple2 = PregMultiple.new
    preg_multiple2.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple, preg_multiple2]
		juego.responde_bien
		expect( juego.get_siguiente_pregunta ).to eq preg_multiple2
	end
end
