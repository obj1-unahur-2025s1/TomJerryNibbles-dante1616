object tom{
    var energia = 50

    method comioA(unRaton){
        energia = energia + 12 + unRaton.peso()
    }

    method correr(unaDistancia){
        energia = energia - unaDistancia / 2
    }

    method velocidadMax(){
        return 5 + energia / 10
    }
    method puedeCazar(unaDistancia) {
      return energia > unaDistancia / 2
    }

    method cazarSiPuede(unRaton, unaDistancia) {
      if(self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comioA(unRaton)
      }
    }
}

object jerry {
    var edad = 2
    
    method peso(){
        return edad * 20
    }

    method cumpleanios() {
       edad = edad + 1 
    }
    method edad() {
      return edad
    }
}

object nibbles {
    method peso(){
        return 35
    }
}


object ratatouille {
  var comidasCocinadas = 0
 
  method peso() {
    return comidasCocinadas * 0.1
  }

    method comidasRealizada() {
      comidasCocinadas = comidasCocinadas + 1
    }

   
}
