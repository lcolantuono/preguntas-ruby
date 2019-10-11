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

  it "Validar Pregunta creada" do
    pregunta = "¿De qué color es el caballo blanco de San Martín?"
    respuestas = ["Blanco", "Negro", "Azul"]
    preg_multiple = PregMultiple.new
    preg_multiple.set_preg_multiple(pregunta, respuestas, 0)
    juego = Juego.new [preg_multiple]
    expect( juego.get_preguntas[0].get_pregunta ).to eq preg_multiple.get_pregunta
  end

end
