require "./utils.rb"

class Juego
	def initialize
		@preg_resp_mult = get_preg_resps
		@vidas = 3
		@score = 0
		@indice = 0
	end

	def reset
		@preg_resp_mult = get_preg_resps
		@vidas = 3
		@score = 0
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

	def pidio_ayuda
		get_siguiente_pregunta.pidio_ayuda
	end

	def pedir_ayuda
		get_siguiente_pregunta.ayuda
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
		@score +=1
    @vidas
  end

	def get_score
		@score
	end
end
