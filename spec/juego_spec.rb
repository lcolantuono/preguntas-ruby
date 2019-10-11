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
end
