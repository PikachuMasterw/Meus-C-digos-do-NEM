programa {
  inclua biblioteca Util, Matematica
  funcao inicio() {
    cadeia nome
    real nota1, nota2, notaFinal, mac, recupera 

    escreva("Diga-me o seu nome: ") leia(nome)

    escreva("Digite o seu c�digo do MAC: ") leia(mac)

     escreva("Nota do primeiro trimestre (M�ximo 10): ") leia(nota1)
     escreva("Nota do segundo trimestre (M�ximo 10): ") leia(nota2)
     escreva("\n")
    notaFinal = (nota1 + nota2) / 2

    se (notaFinal >= 6)
    {
      escreva("Voc� est� aprovado!")
    }

    senao
    {
      se (notaFinal < 4)
      escreva("Voc� est� reprovado!")

      senao
      {
       escreva("Voc� est� de recupera��o!")
       escreva("\nDigite sua nota de recupera��o: ") leia(recupera)
      
       se (recupera >= 5)
       {
       escreva("\nVoc� recuperou!")
       }

        senao
       
         escreva("\nVoc� se lascou"!)
       
      }
    }
  } 
}