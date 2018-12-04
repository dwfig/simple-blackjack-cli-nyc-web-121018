def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1...11)
  return card
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
  input = gets.chomp
  return input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  # code hit? here
  card_total = number
  prompt_user
  input = get_user_input
  if input == 's'
    return card_total
  elsif input == 'h'
    new_total = card_total + deal_card
    return new_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  counter = 0
  while total < 21
    hit?(total)
    display_card_total(total)
    break if counter == 15
    counter = counter + 1
  end
  end_game(total)
end
