programa {
  funcao inicio() {
     real n1
     inteiro posit, nega, zero, repete

     posit = 0
     nega = 0
     zero = 0
     repete = 0

    escreva("SEJA BEM VINDO � CALCULADORA DA RETA REAL!!")
    escreva("\nQuantos n�meros voc� quer repetir: ") leia(repete)

    enquanto (repete != 0)
    {
      escreva("Digite um n�mero: ") leia(n1)

      se (n1 > 0)
      {
        posit = posit + 1
      }
      se (n1 < 0)
      {
        nega = nega + 1
      }
      se (n1 == 0)
      {
        zero = zero + 1
      }

      repete = repete - 1
    }
    limpa()
    escreva("POSITIVOS: ",posit, "\nNEGATIVOS: ",nega, "\nN� = A ZERO: ",zero)
  }
}
