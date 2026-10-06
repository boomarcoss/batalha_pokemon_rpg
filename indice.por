programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500
    funcao inicio() {
      // funções da biblioteca de gráficos para montar a tela do jogo
        escreva("Olá Mundo!")
        graficos.iniciar_modo_grafico(verdadeiro)
        graficos.definir_dimensoes_janela(800, 500)
        graficos.definir_titulo_janela("batalha pokemon rpg")
        /**
         * Tipos de variaveis:
         * cadeia = tipo de dado para escrever textos, exemplo: "batalha pokemon"
         * caracter - tipo de dado para escrever apenas um caracter exemplo: m
         * logico - tipo de dado pra informar se o valor é verdadeiro ou falso, exemplo: cadastrado = falso
         * inteiro - tipo de dado para informar numeros inteiros sem casas decimais, exemplo: idade = 16
         * real - tipo de dado para informar numeros com casas decimais, por exemplo: r$ = 35,99
         * vazio - tipo de dadospara processar funções sem terceiro de valor, exemplo: função escreva
         */

        //informações do meu pokemon:
        cadeia meu_pokemon = "pikachu"
        inteiro hp_meu_pokemon = 100
        inteiro max_hp_meu_pokemon = 100
        //informações do pokemon inimigo:
        cadeia pokemon_inimigo = "gengar"
        inteiro hp_pokemon_inimigo = 120
        inteiro max_hp_pokemon_inimigo = 120
        /***
         * soma (+) = operador utilizado para somar 2 ou mais numeros
         * subtração (-) = operador utilizado para subtrair 2 ou mais numeros
         * multiplicação (*) = operador utilizado para multiplicar 2 ou mais números
         * divisão (/) = operador utilizado para dividir 2 ou mais números
         * modulo(%) = operador utiliza para pegar o valor do resto da divisão
         * procedência dos operadores:
         * os parênteses () vem primeiro que a divisão *, depois da divisão vem a multiplicação, depois vem a soma e por fim a subtração, exemplo:
         * (2 + 2) / 2 * 2 + 2 - 2
         */

inteiro dano = util.sorteia(22, 35)
hp_pokemon_inimigo = hp_pokemon_inimigo - dano
escreva("=== FICHA BATALHA ===\n")
escreva(meu_pokemon, " HP: ", hp_meu_pokemon, "/" , max_hp_meu_pokemon, "\n")
escreva(pokemon_inimigo, " - HP: ", hp_pokemon_inimigo, "/", max_hp_pokemon_inimigo, "\n")


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
        // textos dos pokemons na tela do jogo
        graficos.definir_cor(graficos.COR_PRETO)
        graficos.desenhar_texto(60, 55, pokemon_inimigo + " HP: " + hp_pokemon_inimigo + "/" + max_hp_pokemon_inimigo)
        graficos.desenhar_texto(480, 372, meu_pokemon + " HP: " + hp_meu_pokemon + "/" + max_hp_meu_pokemon)
          // esta função é responsavel por abrir a tela do jogo
        graficos.renderizar()
        escreva("janela gráfica aberta! tela criada com biblioteca de gráficos!\n")
        // esta função aguarda 5 segundos para encerrar o programa
        util.aguarde(5000)
    }
}