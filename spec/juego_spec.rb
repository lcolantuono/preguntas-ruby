require "./lib/Juego.rb"

describe "Juego Preguntas" do
  it "Crear juego tiene pregunta multiple" do
    juego = Juego.new
    expect( juego.get_siguiente_pregunta.class ).to eq PregMultiple
  end

it "Crear juego inicializa con 3 vidas" do
    juego = Juego.new
    expect( juego.get_vidas ).to eq 3
	end

	it "Al responder incorrecto resta una vida" do
    juego = Juego.new
		juego.responde_mal
    expect( juego.get_vidas ).to eq 2
	end

  it "Al responder bien no resta vidas" do
    juego = Juego.new
		juego.responde_bien
    expect( juego.get_vidas ).to eq 3
	end

	it "Al responder 3 veces mal Game Over" do
    juego = Juego.new
		juego.responde_mal
		juego.responde_bien
		juego.responde_mal
		juego.responde_mal
    expect( juego.get_vidas ).to eq 0
	end

	it "Obtener la siguiente pregunta luego de responder bien" do
    juego = Juego.new
		sig_preg = juego.get_siguiente_pregunta.get_pregunta
		juego.responde_bien
		expect( juego.get_siguiente_pregunta.get_pregunta ).not_to eq sig_preg
	end

	it "Al responder 2 veces mal, se resetea el juego, vuelve a 3 vidas" do
    juego = Juego.new
		juego.responde_mal
		juego.responde_mal
		juego.reset
    expect( juego.get_vidas ).to eq 3
	end

	it "Empieza juego con score en 0" do
		  juego = Juego.new
		  expect( juego.get_score ).to eq 0
	end

	it "Respuesta correcta suma un punto al score" do
	  juego = Juego.new
		juego.responde_bien
	  expect( juego.get_score ).to eq 1
	end

	it "Responder todas las respuestas, ganas el juego" do
	  juego = Juego.new
		juego.responde_bien
		juego.responde_bien
		juego.responde_bien
	  expect( juego.get_preguntas.length ).to eq juego.get_indice - 1
	end

	it "Resetear juego vuelve a 0" do
	  juego = Juego.new
		juego.responde_bien
		juego.reset
	  expect( juego.get_score ).to eq 0
	end

	it "Responder correcto devuelve 'Correcto'" do
		 juego = Juego.new
		resp = juego.validar 2
		expect( resp ).to eq "Correcto"
	end


	it "Responder incorrecto resta 1 vida" do
		  	juego = Juego.new
		resp = juego.validar 1
		expect( juego.get_vidas ).to eq 2
	end

	it "Juego get preguntas" do
		primer_pregunta = "En una pecera había 10 peces, 2 se ahogaron y 3 se fueron nadando, ¿Cuántos peces quedaron?"
		  	juego = Juego.new
		expect( juego.get_preguntas[0].get_pregunta ).to eq primer_pregunta
	end
end
