def mostrar_menu
  puts '''Jogo da Velha
Escolha um desses números para fazer sua jogada:
[0] Pedra
[1] Tesoura
[2] Papel'''
end

def exibir_resultado(jogador, com)
  if jogador == com
    'Empate!'
  elsif (jogador == 0 && com == 1) || (jogador == 1 && com == 2) || (jogador == 2 && com == 0)
    'Você ganhou!'
  else
    'Você perdeu!'
  end
end

def main
  com = rand(0..2)

  mostrar_menu

  jogador = nil
  loop do
    begin
      print 'Escolha um número entre 0 e 2: '
      jogador = Integer(gets.chomp)
      if ![0, 1, 2].include?(jogador)
        puts 'Escolha corretamente a sua opção.'
        sleep 1
      else
        break
      end
    rescue ArgumentError
      puts 'Entrada inválida. Por favor, escolha um número entre 0 e 2.'
      sleep 1
    end
  end

  puts '=========='
  puts 'JO'
  sleep 1
  puts 'KEN'
  sleep 1
  puts 'POW!'
  sleep 1
  puts '=========='

  resultado = exibir_resultado(jogador, com)
  puts resultado
  puts "Você jogou #{['Pedra', 'Tesoura', 'Papel'][jogador]} e o computador jogou #{['Pedra', 'Tesoura', 'Papel'][com]}."
end

main if __FILE__ == $PROGRAM_NAME
