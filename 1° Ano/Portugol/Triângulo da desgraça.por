programa {
  funcao inicio() {
    real lado1, lado2, lado3

    escreva("Ola! Seja bem vindo a calculadora triângonal!! :)")

    escreva("\n")
    escreva("\nDigite o primeiro lado do seu triângulo: ") leia(lado1)
    escreva("Digite o segundo lado do seu triângulo: ") leia(lado2)
    escreva("Digite o terceiro lado do seu triângulo: ") leia(lado3)

    se ((lado1 == lado2) e (lado1 == lado3))
  
     escreva("\nSeu triângulo é equilátero!")
    

    senao
     se ((lado1 == lado2) ou (lado1 == lado3) ou (lado2 == lado3))
       escreva("\nSeu triângulo é isóceles!")

      senao
       escreva("\nSeu triângulo é escaleno!")

  }
}
