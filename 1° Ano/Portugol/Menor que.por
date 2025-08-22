programa {
  funcao inicio() {
    real n1, n2, n3

    escreva("Digite o primeiro número: ") leia(n1)
    escreva("Digite o segundo número: ") leia(n2)
    escreva("Digite o terceiro número: ") leia(n3)
    
    escreva("\n")
    escreva("\n-------------------------------------------------\n")
    escreva("RESULTADOS\n")
    
    se ((n1 < n2) e (n1 < n3))
    {
      escreva("O menor número é: ", n1)
    }

    se ((n2 < n1) e (n2 < n3))
    {
      escreva("O menor número é: ", n2)
    }

    se ((n3 < n2) e (n3 < n1))
    {
      escreva("O menor número é: ", n3)
    }

    se ((n1 == n2) e (n1 == n3))
    {
      escreva("Não existe um número menor!")
    }

     se ((n1 == n2) e (n1 < n3))
    {
      escreva("O menor número é: ", n1)
    }

    se ((n3 == n1) e (n3 < n1))
    {
      escreva("O menor número é: ", n2)
    }
    escreva("\n-------------------------------------------------\n")
  }
}
