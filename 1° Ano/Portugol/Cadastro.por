programa {
  funcao inicio() {
    cadeia nome, sobrenome, rua, bairro, cidade, pai!s, email
    inteiro idade, dia, mes, ano, n0, cep

    escreva("DIgite seu nome: ")
    leia(nome)

    escreva("Diga seu sobrenome: ")
    leia(sobrenome)

    escreva("Informe sua idade: ")
    leia(idade)

    escreva("Diga a sua data de nascimento: ")
    escreva("\nDia do Nascimento: ") leia(dia)
    escreva("Mês do Nascimento: ") leia(mes)
    escreva("Ano do Nascimento: ") leia(ano)

    escreva("Informe o seu endereço: \n")
    escreva("Rua: ") leia(rua)
   escreva("Bairro: ") leia(bairro)
   escreva("Cidade: ") leia(cidade)
   escreva("País: ") leia(pai!s)
   escreva("Número da Casa: ") leia(n0)
   escreva("CEP: ") leia(cep)

   escreva("Informe seu email: ")
   leia(email)

   escreva("\n INFORMAÇÕES DO CADASTRO \n")
   escreva("\n Nome: " ,nome, " " ,sobrenome)

   escreva("\n Idade: " ,idade," Anos \n")
   escreva("Data de nascimento: ",dia , "/",mes ,"/",ano ,"\n")

   escreva("\n Endereço completo: ", "\n", rua, " ", bairro, " ", cidade, " ", pai!s, " ", n0, " ", cep)
   escreva("\nSeu email: ", email)
  }
}
