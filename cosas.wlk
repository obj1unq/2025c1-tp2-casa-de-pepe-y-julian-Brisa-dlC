object electrodomestico {
	method esComestible() = false
}

object mueble {
	method esComestible() = false
}

object comida {
	method esComestible() = true
}

object heladera {
	method precio() = 20000
	const property categoria = electrodomestico
	method esComestible() = categoria.esComestible()
}

object cama {
	method precio() = 8000
	const property categoria = mueble
	method esComestible() = categoria.esComestible()
}

object tiraDeAsado {
	method precio() = 350
	const property categoria = comida
	method esComestible() = categoria.esComestible()
}

object paqueteDeFideos {
	method precio() = 50
	const property categoria = comida
	method esComestible() = categoria.esComestible()
}

object plancha {
	method precio() = 1200
	const property categoria = electrodomestico
	method esComestible() = categoria.esComestible()
}