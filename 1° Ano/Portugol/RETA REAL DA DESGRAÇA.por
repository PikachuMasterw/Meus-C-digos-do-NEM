programa {
  funcao inicio() {
     real n1, n2, n3, n4, n5

    escreva("SEJA BEM VINDO � CALCULADORA DA RETA REAL!!")
    escreva("\nDigite o 1� n�mero: ") leia(n1)
    escreva("Digite o 2� n�mero: ") leia(n2)
    escreva("Digite o 3� n�mero: ") leia(n3)
    escreva("Digite o 4� n�mero: ") leia(n4)
    escreva("Digite o 5� n�mero: ") leia(n5)

    limpa()

    se ((n1 > 0) e (n2 > 0) e (n3 > 0) e (n4 > 0) e (n5 > 0))
    escreva("5 N�MEROS S�O POSITIVOS")

    se ((n1 < 0) e (n2 < 0) e (n3 < 0) e (n4 < 0) e (n5 < 0))
    escreva("5 N�MEROS S�O NEGATIVOS")

    se ((n1 == 0) e (n2 == 0) e (n3 == 0) e (n4 == 0) e (n5 == 0))
    escreva("5 N�MEROS S�O IGUAIS A ZERO")

    se ((n1 > 0) ou (n2 > 0) ou (n3 > 0) ou (n4 > 0) ou (n5 > 0))
    escreva("4 N�MEROS S�O POSITIVOS")

    se
    escreva("3 N�MEROS S�O POSITIVOS")
  }
}
