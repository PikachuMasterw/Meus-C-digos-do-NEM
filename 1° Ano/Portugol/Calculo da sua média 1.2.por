programa {
  inclua biblioteca Util, Matematica
  funcao inicio() {
    cadeia nome
    real nota1, nota2, notaFinal, mac, recupera 

    escreva("Diga-me o seu nome: ") leia(nome)

    escreva("Digite o seu código do MAC: ") leia(mac)

     escreva("Nota do primeiro trimestre (Máximo 10): ") leia(nota1)
     escreva("Nota do segundo trimestre (Máximo 10): ") leia(nota2)
     escreva("\n")
    notaFinal = (nota1 + nota2) / 2

    se (notaFinal >= 6)
    {
      escreva("Você está aprovado!")
    }

    senao
    {
      se (notaFinal < 4)
      escreva("Você está reprovado!")

      senao
      {
       escreva("Você está de recuperação!")
       escreva("\nDigite sua nota de recuperação: ") leia(recupera)
      
       se (recupera >= 5)
       {
       escreva("\nVocê recuperou!")
       }

        senao
       
         escreva("\nVocê se lascou"!)
       
      }
    }
  } 
}