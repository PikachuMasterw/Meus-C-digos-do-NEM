programa {
  funcao inicio() {
     real n1, n2, n3, n4, n5

    escreva("SEJA BEM VINDO À CALCULADORA DA RETA REAL!!")
    escreva("\nDigite o 1° número: ") leia(n1)
    escreva("Digite o 2° número: ") leia(n2)
    escreva("Digite o 3° número: ") leia(n3)
    escreva("Digite o 4° número: ") leia(n4)
    escreva("Digite o 5° número: ") leia(n5)

    limpa()

    se ((n1 > 0) e (n2 > 0) e (n3 > 0) e (n4 > 0) e (n5 > 0))
    escreva("5 NÚMEROS SÃO POSITIVOS")

    se ((n1 < 0) e (n2 < 0) e (n3 < 0) e (n4 < 0) e (n5 < 0))
    escreva("5 NÚMEROS SÃO NEGATIVOS")

    se ((n1 == 0) e (n2 == 0) e (n3 == 0) e (n4 == 0) e (n5 == 0))
    escreva("5 NÚMEROS SÃO IGUAIS A ZERO")

    se ((n1 > 0) ou (n2 > 0) ou (n3 > 0) ou (n4 > 0) ou (n5 > 0))
    escreva("4 NÚMEROS SÃO POSITIVOS")

    se
    escreva("3 NÚMEROS SÃO POSITIVOS")
  }
}
