import cosas.* 
import cuentas.*


object casaDePepeYJulian {
    const property cosasCompradas = []
    var property cuenta = cuentaCorriente

    method comprar(cosa) {
        cuenta.extraer(cosa.precio())
        cosasCompradas.add(cosa)
    }

    method cantidadDeCosasCompradas() = cosasCompradas.size()

    method tieneAlgun(categoria) = cosasCompradas.any({
        cosa => cosa.categoria() == categoria
    })

    method vieneDeComprar(categoria) = !cosasCompradas.isEmpty() && cosasCompradas.last().categoria() == categoria

    method esDerrochona() = cosasCompradas.sum({cosa => cosa.precio()}) >= 9000

    method compraMasCara() = !cosasCompradas.isEmpty() && cosasCompradas.max({cosa => cosa.precio()})
    
    method comprados(categoria) = cosasCompradas.filter({
        cosa => cosa.categoria() == categoria
    })

    method malaEpoca() = cosasCompradas.all({
        cosa => cosa.esComestible()
    })

    method queFaltaComprar(lista) = lista.filter({
        cosa => !cosasCompradas.contains(cosa)
    })

    method faltaComida() = cosasCompradas.count({cosa => cosa.esComestible()}) < 2

    method categoriasCompradas() = cosasCompradas.map({cosa => cosa.categoria()}).asSet()
}
