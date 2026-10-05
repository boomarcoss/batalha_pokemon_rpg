programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
    funcao inicio() {
      // funções da biblioteca de gráficos para montar a tela do jogo
        escreva("Olá Mundo!")
        graficos.iniciar_modo_grafico(verdadeiro)
        graficos.definir_dimensoes_janela(800, 500)
        graficos.definir_titulo_janela("batalha pokemon rpg")
        // definição do céu do jogo
        graficos.definir_cor(graficos.criar_cor(150, 216, 250))
        graficos.desenhar_retangulo(0, 0, 800, 240, falso, verdadeiro)
        // plataforma oval do pokemon inimigo
        graficos.definir_cor(graficos.criar_cor(90, 130, 80))
        graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)
        // plataforma oval do nosso pokemon
        graficos.definir_cor(graficos.criar_cor(80, 120, 70))
        graficos.desenhar_elipse(90, 365, 290, 75, verdadeiro)
        // desenho do pokemon inimigo
        graficos.definir_cor(graficos.criar_cor(110, 60, 150))
        graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)
        // esta função é responsável por abrir a tela do jogo
        graficos. renderizar()
        //desnho do nosso pokemon
        graficos.definir_cor(graficos.criar_cor(255, 215, 0))
        graficos.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro)
        // esta função é responsavel por abrir a tela do jogo
        graficos.renderizar()
        escreva("janela gráfica aberta! tela criada com biblioteca de gráficos!\n")
        // esta função aguarda 5 segundos para encerrar o programa
        util.aguarde(5000)
    }
}