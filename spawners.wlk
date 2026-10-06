import invasor.*
import wollok.game.*
import direcciones.*


object spawner{

    //Genera al Invasor
    method generarInvasor() {

        //Determina la posicion lateral
        
        const saleDeLaIzquierda = [true, false].anyOne()
        //Eje X
        const xInicial = if (saleDeLaIzquierda) 0 else game.width() -1
        //Eje Y
        const yAleatoria = (0 .. game.height() - 1).anyOne()
        const direccionInicial = if (saleDeLaIzquierda) "derecha" else "izquierda"

        const nuevoEnemigo = new Invasor(
            position = game.at(xInicial, yAleatoria),
            direccion = direccionInicial
        )

        game.addVisual(nuevoEnemigo)
    }

    //Genera una cantidad predeterminada de invasores
    method spawnearCant_Invasores(cantidadInvasores){
        (1..cantidadInvasores).forEach({i => self.generarInvasor()})
    }
}