import casa.*

object cuentaCorriente {
    var property saldo = 0
    
    method depositar(monto) {
        self.validarMontoPositivo(monto)
        saldo += monto
    }

    method extraer(monto) {
        self.validarMontoPositivo(monto)
        self.validarSaldoSuficiente(monto)
        saldo -= monto
    }

    method validarMontoPositivo(monto) = if (monto < 0) self.error("No puede ingresar un monto negativo")

    method validarSaldoSuficiente(monto) = if (saldo < monto) self.error("No cuenta con suficiente saldo para realizar la extracción")
}

object cuentaConGastos {
    var property saldo = 0
    var property costoPorOperacion = 0
    
    method depositar(monto) {
        self.validarMontoPositivo(monto)
        self.validarCantidadMonto(monto)
        saldo += (monto - costoPorOperacion)
    }

    method extraer(monto) {
        self.validarMontoPositivo(monto)
        saldo -= monto
    }

    method validarMontoPositivo(monto) = if (monto < 0) self.error("No puede ingresar un monto negativo")

    method validarCantidadMonto(monto) = if (monto > 1000) self.error("No se puede depositar más de 1000 por operación")

}

