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

    limpa()

    se (notaFinal >= 6)
    escreva("Voc� est� aprovado!")
    
    se (notaFinal < 4)
    escreva("Voc� est� reprovado!")
    
     se ((notaFinal > 4) e (notaFinal < 6))
       escreva("Voc� est� de recupera��o!")
       escreva("\nDigite sua nota de recupera��o (M�ximo 10): ") 
       leia(recupera)
       
         se (recupera >= 5)
           escreva("\nVoc� recuperou!")
        
         senao
           escreva("\nVoc� se lascou"!)
      
  } 
}