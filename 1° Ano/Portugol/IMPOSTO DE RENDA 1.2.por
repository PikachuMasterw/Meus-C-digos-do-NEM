programa {
  inclua biblioteca Util
  funcao inicio() {
    cadeia nome
    real sa1, sa2, sa3, sa4, sa5, imposto, saTotal, medico, saTo0, medic17, oFinal
    sa1 = 0
    sa2 = 0
    sa3 = 0
    sa4 = 0
    sa5 = 0

   escreva("Digite o nome do usu�rio: ") leia(nome)

   escreva("\nDigite sua primeira fonte de renda: ") leia(sa1)

   escreva("\nDigite sua segunda fonte de renda: ") leia(sa2)

   escreva("\nDigite sua terceira fonte de renda: ") leia(sa3)

   escreva("\nDigite sua quarta fonte de renda: ") leia(sa4)

   escreva("\nDigite sua quinta fonte de renda: ") leia(sa5)

   escreva("\nDigite o quanto voc� gastou em despesas m�dicas: ") leia(medico)

   saTotal = sa1 + sa2 + sa3 + sa4 + sa5

   limpa()

   escreva("Seu sal�rio total � de: R$", saTotal)
   escreva("\n")

   saTo0 = saTotal * 0.15

   saTo0 = saTotal * 0.20

   saTo0 = saTotal * 0.27

   se (saTotal < 10000)
   {
   escreva("\nVoc� n�o precisa pagar impostos!")
   }
   
   se ((saTotal >= 10000) e (saTotal < 14999))
   {
   escreva("\nPor seu sal�rio ser: R$", saTotal , " ,isso significa que voc� pagar� 15% do seu sal�rio em impostos!")
   escreva("\nVoc� tem que pagar: R$", saTo0 , " ao governo")
   }

   se ((saTotal >= 15000) e (saTotal < 19999))
   {
    escreva("\nPor seu sal�rio ser: R$", saTotal , " ,isso significa que voc� pagar� 20% do seu sal�rio em impostos!")
    escreva("\nVoc� tem que pagar: R$", saTo0 , " ao governo")
   }

   se (saTotal >= 20000)
   {
    escreva("\nPor seu sal�rio ser: R$", saTotal, " ,isso significa que voc� pagar� 27% do seu sal�rio em impostos!")
    escreva("\nVoc� tem que pagar: R$", saTo0 , " ao governo")
   }

    medic17 = medico * 0.17

    escreva("\n\nDespesas m�dicas em rela��o ao seu sal�rio;\nDeduzimos que 17% dos seus R$", medico, " ser�o inclusos a sua situa��o, sendo: R$", medic17)

    oFinal = saTo0 -  medic17

    escreva("O seu imposto final � ", oFinal)
    
    limpa()
    escreva("Imprimindo")
    Util. aguarde(1000)
    escreva(".")
    Util. aguarde(1000)
    escreva(".")
    Util. aguarde(1000)
    escreva(".")
    
    limpa()

    escreva("\n------------------------------------------------------\n")
    Util. aguarde(1000)
    escreva("Nome: ",nome)
    Util. aguarde(1000)
    escreva("\nSeu sal�rio total � de: R$ ", saTotal)
    Util. aguarde(1000)
    escreva("\nSeus gastos m�dicos foram de: R$ ", medico)
    Util. aguarde(1000)

    se (oFinal < 0)
    {
     escreva("\nVoc� vai receber: R$", oFinal, " do governo")
    }

    se (oFinal > 0)
    {
      escreva("\nVoc� vai ter que pagar: R$", oFinal, " ao governo")
    }

    escreva("\n------------------------------------------------------\n")

    
  }
}
