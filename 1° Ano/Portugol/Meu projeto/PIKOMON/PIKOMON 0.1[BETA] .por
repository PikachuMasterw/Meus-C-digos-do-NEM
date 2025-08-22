programa {
  funcao inicio() {
    inteiro repetir = 0//repetir = loop
    inteiro tela = 0 //tela = as imagens que ele vai mostrar no programa
    inteiro comando //comandos que jogador ira fazer em jogo
    enquanto(repetir == 0){ //looping semi-infinito
    se(tela == 0){ //imagem1 de tela
    limpa()
    escreva("              --PIKOMON--         \n")  
    escreva("                     _______                         \n") 
    escreva("                    |       |         1 -jogar        \n") 
    escreva("                    |---O---|         2 -configurar   \n") 
    escreva("                    |_______|                    \n")  
    escreva("                                         v.0.1         \n")
    escreva("                                      3 -sair         \n") 
    }
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 1){ //imagem2 de tela
    limpa()
    escreva("--CONFIGURAR--\n")  
    escreva("              \n") 
    escreva("-configurar1  \n") 
    escreva("-configurar2  \n") 
    escreva("              \n")  
    escreva("              \n")
    escreva("-voltar       \n")  
    }
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 2){ //imagem3 de tela
    limpa()
    escreva("--JOGO--\n")  
    escreva("              \n") 
    escreva("-jogar1       \n") 
    escreva("-jogar2       \n") 
    escreva("              \n")  
    escreva("              \n")
    escreva("-voltar       \n")  
    }
    }
    }
    se((comando == "-configurar1") e (tela == 1)){
      escreva("-configurar1 detectado")
    }
    se((comando == "-configurar2") e (tela == 1)){
      escreva("-configurar2 detectado")
    }
    se((comando == "-jogar1") e (tela == 2)){
      escreva("-jogar1 detectado")
    }
    se((comando == "-jogar2") e (tela == 2)){
      escreva("-jogar2 detectado")
    }
    leia(comando) //para ele modificar a variavel comando em jogo
    se((comando == "-jogar") e (tela == 0)){
      tela = 2
    }
    se((comando == "-configurar") e (tela == 0)){
      tela = 1 
    }
    se((comando == "-sair") e (tela == 0)){
      repetir = 1 //desligar loop
    }
    
    se((comando == "-voltar") e (tela != 0)){
      tela = 0
    }
    
    }
  }
}
