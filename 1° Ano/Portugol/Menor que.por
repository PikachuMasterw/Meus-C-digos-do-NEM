programa {
  funcao inicio() {
    real n1, n2, n3

    escreva("Digite o primeiro n�mero: ") leia(n1)
    escreva("Digite o segundo n�mero: ") leia(n2)
    escreva("Digite o terceiro n�mero: ") leia(n3)
    
    escreva("\n")
    escreva("\n-------------------------------------------------\n")
    escreva("RESULTADOS\n")
    
    se ((n1 < n2) e (n1 < n3))
    {
      escreva("O menor n�mero �: ", n1)
    }

    se ((n2 < n1) e (n2 < n3))
    {
      escreva("O menor n�mero �: ", n2)
    }

    se ((n3 < n2) e (n3 < n1))
    {
      escreva("O menor n�mero �: ", n3)
    }

    se ((n1 == n2) e (n1 == n3))
    {
      escreva("N�o existe um n�mero menor!")
    }

     se ((n1 == n2) e (n1 < n3))
    {
      escreva("O menor n�mero �: ", n1)
    }

    se ((n3 == n1) e (n3 < n1))
    {
      escreva("O menor n�mero �: ", n2)
    }
    escreva("\n-------------------------------------------------\n")
  }
}
