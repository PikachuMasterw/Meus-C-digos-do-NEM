programa {
  inclua biblioteca Util --> U
  funcao inicio() {
    inteiro repetir = 0//repetir = loop
    inteiro tela = 0 //tela = as imagens que ele vai mostrar no programa
    cadeia comando //comandos que jogador ira fazer em jogo
    enquanto(repetir == 0){ //looping semi-infinito
    real vida1, vida2
    cadeia player1, player2, pk1, pk2, passaDialogo
    
    
    
    se(tela == 0){ //imagem1 de tela 
    limpa()
    escreva("              --PIKOMON--         \n")  
    escreva("                _______                         \n") 
    escreva("               |       |         1 -jogar        \n") 
    escreva("               |---O---|         2 -configurar   \n") 
    escreva("               |_______|                    \n")  
    escreva("                                         V.0.9[ALFA]         \n")
    escreva("                                 9 -sair         \n") 
    }
    
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 1){ //imagem2 de tela
    limpa()
    escreva("       --CONFIGURAR--\n")  
    escreva("                                 \n") 
    escreva("                                 \n") 
    escreva("             NADA PRA VER AQUI!                    \n") 
    escreva("                                 \n")  
    escreva("                                 \n")
    escreva("                 0 -voltar       \n")  
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
    
    
    se((comando == "Novo jogo") ou (comando == "4")e (tela == 2)){
      tela = 3
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
      escreva(" ")
      escreva(" ")
      escreva("??- Olá treinador!                              ")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Me chame de Professor Palmeira!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Eu sou um pesquisador de pikomons e explorei todo o mundo!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Então... Eu esqueci o seu nome... Qual é o seu nome? ") leia(player1) 
      escreva("Ah sim! seu nome é ", player1, "!")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Você tem um amigo que conhece desde a sua infância, e ele é o meu neto!")
      escreva(" Mas... Também esqueci o nome dele...")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("??- VÔ!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Então ", player1, " , qual o nome do seu amigo? ") leia(player2)
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- AH sim! O nome dele é ", player2, "!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Bom, agora você vai escolher o seu primeiro pikomon!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva("                                                            \n")  
      escreva("       _______         _______         _______              \n") 
      escreva("      |       |       |       |       |       |             \n") 
      escreva("      |---O---|       |---O---|       |---O---|             \n") 
      escreva("      |_______|       |_______|       |_______|             \n")  
      escreva("   1- Charmander     2- Squirtle   3- Bulbassauro           \n")
      escreva("                                                            \n")

     se((comando == "Charmander") ou (comando == "1") e (tela == 3)){
      pk1 == "Charmander"
      pk2 == "Squirtle"
     }

     se((comando == "Squirtle") ou (comando == "2") e (tela == 3)){
      pk1 == "Squirtle"
      pk2 == "Bulbassauro"
     }
    
     se((comando == "Bulbassauro") ou (comando == "3") e (tela == 3)){
      pk1 == "Bulbassauro"
      pk2 == "Charmander"
     }

     escreva(" ")
     escreva(" ")
     escreva("Prof. Palmeira- Bom, o seu primero pokemon vai ser o ", pk1, " e o meu neto escolheu o ", pk2, "!")
     escreva(" ")
     escreva(" ")
     leia(passaDialogo)
     escreva(" ")
     escreva(" ")
     escreva(player2, "- Agora que nós dois temos pikomons, VAMOS FAZER UMA BATALHA POKEMON!")
     escreva(" ")
     escreva(" ")
     U.aguarde(3000)
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
