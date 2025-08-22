programa {
  funcao inicio() {
    real temperatura, celsius, fah, kelvin, fF, fFAH1, fFAH2, fFAH3

    escreva("BEM VINDO AO CONVERSOR DE TEMPERATURAS!")
    escreva("\nDigite uma temperatura (em °F): ") leia(temperatura)

    fF = 273.15
    fFAH1 = 1.8
    fFAH2 = 32
    fFAH3 = 5/9

    fah = temperatura
    celsius = (temperatura - fFAH2) / fFAH1
    kelvin = (temperatura - fFAH2) * fFAH3 + fF

    escreva("_____________________________________________________")

    escreva("\nRESULTADO")
    escreva("\n\n", temperatura, " Fahrenheit", "\n", celsius, " Graus Celsius", "\n", kelvin, " Kelvin")
    escreva("\n_____________________________________________________")
  }
}
