programa {
  funcao inicio() {
    cadeia nome
    real nota1, nota2, nota3, notaFinal, matricula

    escreva("Diga-me o seu nome: ") leia(nome)

    escreva("Digite o seu c�digo de matr�cula: ") leia(matricula)

    escreva("Nota do primeiro trimestre (M�ximo 10): ") leia(nota1)
    escreva("Nota do segundo trimestre (M�ximo 10): ") leia(nota2)
    escreva("Nota do terceiro trimestre (M�ximo 10): ") leia(nota3)

    notaFinal = (nota1 + nota2 + nota3) / 3

    se ((notaFinal >= 0) e (notaFinal < 2))
    {
      escreva("\nVoc� ficou com ", notaFinal, " em sua m�dia, ou seja, voc� ficou com Conceito E!")
    }

    se ((notaFinal >= 2) e (notaFinal < 4))
    {
      escreva("\nVoc� ficou com ", notaFinal, " em sua m�dia, ou seja, voc� ficou com Conceito D!")
    }

    se ((notaFinal >= 4) e (notaFinal < 6))
    {
      escreva("\nVoc� ficou com ", notaFinal, " em sua m�dia, ou seja, voc� ficou com Conceito C!")
    }

    se ((notaFinal >= 6) e (notaFinal < 8))
    {
      escreva("\nVoc� ficou com ", notaFinal, " em sua m�dia, ou seja, voc� ficou com Conceito B!")
    }

    se ((notaFinal >= 8) e (notaFinal < 11))
    {
      escreva("\nVoc� ficou com ", notaFinal, " em sua m�dia, ou seja, voc� ficou com Conceito A!")
    }

   limpa()
    
    escreva("\n---------------------------------------------------------------------------------------")
    escreva("\nAluno: ", nome, "\nC�digo da Matr�cula: ", matricula, "\nSua m�dia: ", notaFinal,)
  }
}