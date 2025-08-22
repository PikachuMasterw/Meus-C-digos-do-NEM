programa {
  funcao inicio() {
    inteiro inicio, fim, num, resul, contador = 0

    /*escreva("Digite a palavra: ") leia(palavra)*/
    escreva("Contar a partir de que n°? ") leia(inicio)
    escreva("Contar até que n°? ") leia(fim)
    escreva("Digite um número: ") leia(num)

    para (contador = inicio; contador <= fim; contador++){
     resul = num * contador
     escreva(num, " x ", contador, " = ", resul,"\n")
    }
  }
}
