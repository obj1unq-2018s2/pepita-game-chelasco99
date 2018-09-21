import ciudades.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepona.png"
		} else if (energia > 100) {
			return "pepita2.png"
		} else {
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			// TODO Falta el nombre de la ciudad en el mensaje!
			game.say(self, "Ya estoy en !")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO Esa repetición se podría evitar.
		if (energia >= self.energiaParaVolar(posicion.distance(nuevaPosicion))) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			game.say(self, "Dame de comer primero!")
		}
	}

	method teEncontro(algo) {
		algo.alimentaA(self)
	}

}

