require_relative "blackjack.rb"

def runner
  # code runner here
  welcome
  total = initial_round
  loop do
    total = hit?(total)
    display_card_total(total)
    total > 21 ? break : hit(total)
  end
  end_game(total)
end
