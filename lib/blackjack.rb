def welcome
  # code #welcome here
 puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  #@hand = to deal card + deal card using hand will help keep 
  #track for the hand
  players_pick_1 = deal_card 
  players_pick_2 = deal_card
  total_in_hand = players_pick_1 + players_pick_2
  display_card_total(total_in_hand)
  total_in_hand
end

def hit?(sum)
  # code hit? here
  prompt_user
  user_response = get_user_input
  if user_response == "h"
    new_hit = deal_card
    sum = sum + new_hit
  else
    sum
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    

