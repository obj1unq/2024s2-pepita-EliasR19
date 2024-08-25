object pepita {
    var energia = 100

    method comer(comida){ //setter
        energia = energia + comida.energiaQueAporta()
    }

    method volar(distancia){  //setter
        energia = energia - 10 - distancia
    }

    method energia(){ //getter
        return energia
    }
}

object pepon {    //pepon ejercicio
    var energia = 30
    
    method energia() {    //getter/consulta solo devuelve
        return energia
    }

    method comer(comida){ //orden modifica algo
        energia = energia + (comida.energiaQueAporta()/2)
    }

    method volar(distancia){
        energia = energia - 20 - 2*distancia
    }
}

// Alimentos
object alpiste {

    const energia = 20

    method energiaQueAporta(){
        return energia
  }
}

object manzana {
    
    var madurez = 1
    const energia = 5

    method madurez(){
        return madurez
    }

    method madurez(_madurez){
        madurez = _madurez
    }

    /*
    method madurar(){
        self.madurez(madurez + 1)   //el objeto se envia un mensaje a si mismo(llama a un método de si mismo)   //método de acción no setter
    }
    */
    method energiaQueAporta(){
        return energia * madurez
    }

}
        
//Personas
object roque {

    var tieneAve = "no tiene ave" //tambien puede empezar ya con un ave ## var tieneAve = pepita
    var cant_alimentadas = 0

    method ave(ave){  //le da un ave a roque  //setter
        tieneAve = ave
        cant_alimentadas = 0
    }

    method ave(){ //consulta qué ave tiene roque //getter
        return tieneAve
    }

    method alimentar(){ //modifica valor interno del objeto //método de acción no setter
        cant_alimentadas += 1 
    }

    method alimentar(alimento){ //roque le da de comer al ave que tenga, Debe que tener un ave
        tieneAve.comer(alimento)
        self.alimentar()
    }

    method cenas(){ //getter
        return cant_alimentadas
      
    }

    method entrenar(distancia) {    //setter
        tieneAve.volar(distancia)
    }

}
