programa {
  funcao inicio() {
    cadeia nome, operacao
    real numero1, numero2, resultado, mais, menos, dividir, multiplicar

    escreva("Qual seu nome? ") leia(nome)

    escreva("\n\nEfetue as suas contas! ")
    escreva("\nPrimeiro numero: ") leia(numero1)
    escreva("\nSegundo numero: ")leia(numero2)

    mais = numero1 + numero2
    menos = numero1 - numero2
    dividir = numero1 / numero2
    multiplicar = numero1 * numero2

    escreva("\nRESULTADOS: \n", numero1, "+", numero2, "=", mais)
    escreva("\n", numero1, "-", numero2, "=", menos)
    escreva("\n", numero1, "/", numero2, "=", dividir)
    escreva("\n", numero1, "*", numero2, "=", multiplicar)
  }
}
