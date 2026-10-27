import game.*
object tablero {
    
    method validarDentro(position) {
        if (not self.dentro(position)) {
            self.error(position.toString() + " no está dentro del tablero ")
        }
    }

    method dentro(position) {
        return position.x().between(0, game.width() -1) and position.y().between(0, game.height() -1 )
    }
}

object arriba {

    method siguiente(position) {
        const nueva = position.up(1) 
        tablero.validarDentro(nueva)
        return nueva
    }

    method avanzarHasta(position, pasos) {
        return position.up(pasos)
    }

    method opuesta() {
        return abajo
    }

    method esValidaDesde(position) {
        return position.y() < game.height() - 1
    }

    method nombreDireccion(){
        return "arriba"
    }
}


object abajo {
    
    method siguiente(position) {
        const nueva = position.down(1) 
        tablero.validarDentro(nueva)
        return nueva
    }

    method avanzarHasta(position, pasos) {
        return position.down(pasos)
    }

    method opuesta() {
        return arriba
    }

    method esValidaDesde(position) {
        return position.y() > 0
    }

    method nombreDireccion(){
        return "abajo"
    }
}

object derecha {
    method siguiente(position) {
        const nueva = position.right(1) 
        tablero.validarDentro(nueva)
        return nueva
    }

    method avanzarHasta(position, pasos) {
        return position.right(pasos)
    }

    method opuesta() {
        return izquierda
    }

    method esValidaDesde(position) {
        return position.x() < game.width() - 1
    }

    method nombreDireccion(){
        return "derecha"
    }

}
object izquierda{
    method siguiente(position) {
        const nueva = position.left(1) 
        tablero.validarDentro(nueva)
        return nueva
    }

    method avanzarHasta(position, pasos) {
        return position.left(pasos)
    }

    method opuesta() {
        return derecha
    }

    method esValidaDesde(position) {
        return position.x() > 0
    }

    method nombreDireccion(){
        return "izquierda"
    }

}
