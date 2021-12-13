makeCacheMatrix <- function(x = numerico()) {

  # contiene il valore memorizzato nella cache o NULL se non viene memorizzato nulla nella cache
  # inizialmente non viene memorizzato nulla nella cache, quindi impostalo su NULL
  cache <- NULL

  # memorizzare una matrice
  setMatrix <- function(newValue) {
    x <<- newValue
    # poiché alla matrice viene assegnato un nuovo valore, svuotare la cache
    cache <<- NULL
  }

  # restituisce la matrice memorizzata
 getMatrix <- funzione() {
    x
  }

  # memorizzare nella cache l'argomento indicato 
 cacheInverse <- funzione(risolvere) {
 cache <<- risolvere
  }

  # ottenere il valore memorizzato nella cache
 getInverse <- funzione() {
    cache
  }

  # restituire un elenco. Ogni elemento denominato dell'elenco è una funzione
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


# La seguente funzione calcola l'inverso di una matrice "speciale" creata con 
# makeCacheMatrix
cacheSolve <- funzione(y, ...) {
  # ottenere il valore memorizzato nella cache
  inverse <- y$getInverse()
  # se esiste un valore memorizzato nella cache, restituirlo
 se(! is.null(inverso)) {
 message("ottenere dati memorizzati nella cache")
 return(inverso)
  }
  # altrimenti prendi la matrice, caclulate l'inverso e conservala in
  # la cache
  data <- y$getMatrix()
 < inversa-  solve(data)
 y$cacheInverse(inverso)

  # restituisce l'inverso
  inverso
}
