object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	
	method esComida() {
		game.removeVisual(self)
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	
	method esComida() {
	   game.removeVisual(self)
	}
}
