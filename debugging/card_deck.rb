require 'byebug'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
cards2 = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
cards3 = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
cards4 = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards2,
         :clubs    => cards3,
         :spades   => cards4 }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
# byebug
player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck
# byebug
sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end
  # byebug
  sum += scores.sum
end

puts sum