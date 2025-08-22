programa {
  funcao inicio() {
    cadeia nome
    real nota1, nota2, nota3, notaFinal, matricula

    escreva("Diga-me o seu nome: ") leia(nome)

    escreva("Digite o seu código de matrícula: ") leia(matricula)

    escreva("Nota do primeiro trimestre (Máximo 10): ") leia(nota1)
    escreva("Nota do segundo trimestre (Máximo 10): ") leia(nota2)
    escreva("Nota do terceiro trimestre (Máximo 10): ") leia(nota3)

    notaFinal = (nota1 + nota2 + nota3) / 3

    se ((notaFinal >= 0) e (notaFinal < 2))
    {
      escreva("\nVocê ficou com ", notaFinal, " em sua média, ou seja, você ficou com Conceito E!")
    }

    se ((notaFinal >= 2) e (notaFinal < 4))
    {
      escreva("\nVocê ficou com ", notaFinal, " em sua média, ou seja, você ficou com Conceito D!")
    }

    se ((notaFinal >= 4) e (notaFinal < 6))
    {
      escreva("\nVocê ficou com ", notaFinal, " em sua média, ou seja, você ficou com Conceito C!")
    }

    se ((notaFinal >= 6) e (notaFinal < 8))
    {
      escreva("\nVocê ficou com ", notaFinal, " em sua média, ou seja, você ficou com Conceito B!")
    }

    se ((notaFinal >= 8) e (notaFinal < 11))
    {
      escreva("\nVocê ficou com ", notaFinal, " em sua média, ou seja, você ficou com Conceito A!")
    }

   limpa()
    
    escreva("\n---------------------------------------------------------------------------------------")
    escreva("\nAluno: ", nome, "\nCódigo da Matrícula: ", matricula, "\nSua média: ", notaFinal,)
  }
}