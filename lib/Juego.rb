require "./utils.rb"

class Juego
	def initialize
		@preg_resp_mult = get_preg_resps
		@vidas = 3
		@indice = 0
	end

	def reset
		@preg_resp_mult = get_preg_resps
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

	def validar posible_respuesta
		resultado = get_siguiente_pregunta.validar posible_respuesta
		if resultado == 'Incorrecto'
			responde_mal
		end
		return resultado
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
