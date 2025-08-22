programa {
  funcao inicio() {
    real temperatura, celsius, fah, kelvin, cC, fFAH1, fFAH2

    escreva("BEM VINDO AO CONVERSOR DE TEMPERATURAS!")
    escreva("\nDigite uma temperatura (em °K): ") leia(temperatura)

    cC = 273.15
    fFAH1 = 1.8
    fFAH2 = 32

    kelvin = temperatura
    fah = (temperatura - cC) * fFAH1 + fFAH2
    celsius = temperatura - cC

    escreva("_____________________________________________________")

    escreva("\nRESULTADO")
    escreva("\n\n", temperatura, " Kelvin", "\n", fah, " Fahrenheit", "\n", celsius, " Graus Celsius")
    escreva("\n_____________________________________________________")
  }
}
