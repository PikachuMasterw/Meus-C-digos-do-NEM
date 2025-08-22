programa {
  inclua biblioteca Util --> U
  funcao inicio() {
    inteiro repetir = 0//repetir = loop
    inteiro tela = 0 //tela = as imagens que ele vai mostrar no programa
    cadeia comando //comandos que jogador ira fazer em jogo
    enquanto(repetir == 0){ //looping semi-infinito
    real vida1, vida2
    cadeia player, pk1, pk2
    se(tela == 0){ //imagem1 de tela 
    limpa()
    escreva("              --PIKOMON--         \n")  
    escreva("                     _______                         \n") 
    escreva("                    |       |         1 -jogar        \n") 
    escreva("                    |---O---|         2 -configurar   \n") 
    escreva("                    |_______|                    \n")  
    escreva("                                         v.0.5[BETA]         \n")
    escreva("                                      9 -sair         \n") 
    }
    
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 1){ //imagem2 de tela
    limpa()
    escreva("       --CONFIGURAR--\n")  
    escreva("              \n") 
    escreva("                  5 -Renomear player  \n") 
    escreva("                  6 -Renomear pikomon  \n") 
    escreva("                                 \n")  
    escreva("                                 \n")
    escreva("                  0 -voltar       \n")  
    }
    
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 2){ //imagem3 de tela
    limpa()
    escreva("                --JOGO--\n")  
    escreva("                                            \n") 
    escreva("                                4 -Novo jogo       \n") 
    escreva("                                       \n") 
    escreva("                                            \n")  
    escreva("                                            \n")
    escreva("                                 0 -voltar       \n")  
    }
    }
    }
    senao{
      se(tela == 3){
      limpa()
      U.aguarde(1000)
      escreva("Criando mundo")
      U.aguarde(3000)
      limpa()
      escreva("Programando NPC's")
      U.aguarde(3000)
      limpa()
      escreva("Colocando pikomons no mapa")
      U.aguarde(3000)
      limpa()
      escreva("Quase pronto")
      U.aguarde(1000)
      escreva(".")
      U.aguarde(1000)
      escreva(".")
      U.aguarde(1000)
      escreva(".")
      U.aguarde(1000)
      limpa()
      escreva("Pronto!")
      U.aguarde(1000)
      limpa()
      escreva("")
      escreva("")
      escreva(" Olá treinador!                              ")
      escreva("")
      escreva("")
      U.aguarde(2000)
      limpa()
      escreva("")
      escreva("")
      escreva("Meu nome é Professor Palmeira!")
      escreva("")
      escreva("")
      }
    se((comando == "Renomear player") ou (comando == "5") e (tela == 1)){
      escreva("Qual será o seu nome?") leia(player)
    }

    se((comando == "Renomear pikomon") ou (comando == "6")e (tela == 1)){
      
    }

    se((comando == "Novo jogo") ou (comando == "4")e (tela == 2)){
      tela = 3
    }

    leia(comando) //para ele modificar a variavel comando em jogo
    se((comando == "-jogar") ou (comando == "1") e (tela == 0)){
      tela = 2
    }

    se((comando == "-configurar") ou (comando == "2") e (tela == 0)){
      tela = 1 
    }

    se((comando == "-sair") ou (comando == "9") e (tela == 0)){
      repetir = 1 //desligar loop
    }
    
    se((comando == "-voltar") ou (comando == "0") e (tela != 0)){
      tela = 0
    }
    
    }

    
  }
  funcao battle()
}
