programa {
  inclua biblioteca Util --> U
  funcao inicio() {
    real paisA = 5000, paisB = 7000, taxaA = 3/100, taxaB = 2/100
    inteiro ano = 1900, cnt = 1 

    enquanto(paisA < paisB){
      paisA = paisA * (1 + taxaA)
      paisB = paisB * (1 + taxaB)
      ano = ano + 1
      cnt = cnt + 1

      escreva("\n---------------------------------------------------\n")
      escreva("Ano: ", ano, "; Pais A: ", paisA)
      escreva("\nAnos decorridos: ", cnt, "; País B: ",paisB,"\n")
      escreva("\n---------------------------------------------------\n")
      U.aguarde(200)
    }
    
  }
}
