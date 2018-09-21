import comidas.*
import ciudades.*
import pepita.*

object roque {
	var property posicion = game.at(0,0)
	var tengoComida = null
	
	method imagen() = "jugador.png"

	// TODO Este método no hace falta, nunca se usa.
	method move(nuevaPosicion) {
		self.posicion(nuevaPosicion)
	}
	
	method agarraComida(comida) {
		if ( tengoComida != null ) {
			game.addVisualIn(tengoComida, posicion.up(1))
		}
		tengoComida = comida
	}
	
	method alimentaA(ave) {
		if ( tengoComida != null ) {
			ave.come(tengoComida)
			// TODO Hubiera sido bueno separar esto en un método/objeto aparte
			game.addVisualIn(tengoComida, game.at(0.randomUpTo(10),0.randomUpTo(10)))
		}
		tengoComida = null
	}
 }
