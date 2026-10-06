import wollok.game.*
import direcciones.*
import pacman.*

class Invasor {
    var property position 
    var property direccion 

    method image() {
        return "invasor.png"
    }

    //Inicia el ciclo de disparos del invasor
    method initialize() {
        game.onTick(2000, "disparador_proyectil_" + self.identity().toString(), {self.fire()})
    }

    //Este metodo se encarga de disparar el proyectil justo en la posicion de invasor

    method fire(){
        const proyectil = new Proyectil(position = self.position(), direccion = direccion)
        game.addVisual(proyectil)

        //Avisa al proyectil que comienze a avanzar
        game.onTick(100, "movimiento_proyectil_" + proyectil.identity().toString(), {proyectil.avanzar()})
    }
}

class Proyectil {
  var property position
  const direccion 

  method image() {
        return "proyectil.png"
  }

    method initialize() {
        game.whenCollideDo(self, { unPersonaje => 
            if (unPersonaje == pacman) {
                // Elimina al pacman del juego (o podés llamar a un método pacman.morir())
                game.removeVisual(pacman)
                
                // Limpia los eventos y saca el proyectil
                self.destruir()
                
                // Termina el juego
                game.stop()
            }
        })
    }

  method avanzar() {
    position = if(direccion == "derecha"){
        position.right(1)
    }else{
        position.left(1)
    }

    //Elimina el proyectil una vez se sale de la pantalla
    if (position.x() < 0 or position.x() >= game.width()){
        game.removeVisual(self)
        game.removeTickEvent("movimiento_proyectil_" + self.identity().toString())
    }
  }

  // Método auxiliar para limpiar los ticks y remover el proyectil visualmente
    method destruir() {
        if (game.hasVisual(self)) {
            game.removeVisual(self)
        }
        
        game.removeTickEvent("movimiento_proyectil_" + self.identity().toString())
        
    }
}