programa {
  funcao inicio() {
    real lado1, lado2, lado3

    escreva("Ola! Seja bem vindo a calculadora tri�ngonal!! :)")

    escreva("\n")
    escreva("\nDigite o primeiro lado do seu tri�ngulo: ") leia(lado1)
    escreva("Digite o segundo lado do seu tri�ngulo: ") leia(lado2)
    escreva("Digite o terceiro lado do seu tri�ngulo: ") leia(lado3)

    se ((lado1 == lado2) e (lado1 == lado3))
  
     escreva("\nSeu tri�ngulo � equil�tero!")
    

    senao
     se ((lado1 == lado2) ou (lado1 == lado3) ou (lado2 == lado3))
       escreva("\nSeu tri�ngulo � is�celes!")

      senao
       escreva("\nSeu tri�ngulo � escaleno!")

  }
}
