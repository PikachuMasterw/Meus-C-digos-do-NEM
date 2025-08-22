programa {
  funcao inicio() {
    cadeia nome
    inteiro sa1, sa2, sa3, sa4, sa5, imposto, saTotal, medico, saTo15, saTo20, saTo27, medic17
    sa1 = 0
    sa2 = 0
    sa3 = 0
    sa4 = 0
    sa5 = 0

    escreva("Digite o nome do usuário: ") leia(nome)

    escreva("\nDigite sua primeira fonte de renda: ") leia(sa1)

    escreva("\nDigite sua segunda fonte de renda: ") leia(sa2)

    escreva("\nDigite sua terceira fonte de renda: ") leia(sa3)

    escreva("\nDigite sua quarta fonte de renda: ") leia(sa4)

   escreva("\nDigite sua quinta fonte de renda: ") leia(sa5)

   escreva("\nDigite o quanto você gastou em despesas médicas: ") leia(medico)

   saTotal = sa1 + sa2 + sa3 + sa4 + sa5

   limpa()

   escreva("Seu salário total é de: R$", saTotal)
   escreva("\n")

   saTo15 = saTotal * 0.15

   saTo20 = saTotal * 0.20

   saTo27 = saTotal * 0.27

   se (saTotal < 10000)
   {
   escreva("\nVocê não precisa pagar impostos!")
   }
   
   se ((saTotal >= 10000) e (saTotal < 14999))
   {
   escreva("\nPor seu salário ser: R$", saTotal , " ,isso significa que você pagará 15% do seu salário em impostos!")
   escreva("\nVocê tem que pagar: R$", saTo15 , " ao governo")
   }

   se ((saTotal >= 15000) e (saTotal < 19999))
   {
    escreva("\nPor seu salário ser: R$", saTotal , " ,isso significa que você pagará 20% do seu salário em impostos!")
    escreva("\nVocê tem que pagar: R$", saTo20 , " ao governo")
   }

   se (saTotal >= 20000)
   {
    escreva("\nPor seu salário ser: R$", saTotal, " ,isso significa que você pagará 27% do seu salário em impostos!")
    escreva("\nVocê tem que pagar: R$", saTo27 , " ao governo")
   }

    medic17 = medico * 0.17

    escreva("Despesas médicas em relação ao seu salário;\nDedusimos que 17% dos seus", medico, " serão inclusos a sua situação")
  }
}
