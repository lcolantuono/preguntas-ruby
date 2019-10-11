class Juego
	def initialize preg_resp_mult
		@preg_resp_mult = preg_resp_mult
		@vidas = 3
		@indice = 0
	end

	def get_preguntas
		@preg_resp_mult
	end

	def get_siguiente_pregunta
		@preg_resp_mult[@indice]
	end

  def get_vidas
    @vidas
	end

	def responde_mal
		@vidas -= 1
		@vidas
  end

	def responde_bien
    @indice += 1
    @vidas
  end
end
