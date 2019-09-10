@record = "Thatcher - 4 in 11 years\nMajor - 6 in 7 years\nBlair - 4 in 10 years\nBrown - 3 in 3 years\nCameron - 10 in 6 years\nMay - 33 in 3 years\nJohnson - 6 in one week"

@effectiveness = { Thatcher: 0.000996, Major: 0.002348, Blair: 0.001096, Brown: 0.00274, Cameron: 0.004566,
May: 0.030137, Johnson: 0.857143 }

@defeats = { Thatcher: '4 in 11 years', Major: '6 in 7 years', Blair: '4 in 10 years', Brown: '3 in 3 years', Cameron: '10 in 6 years',
May: '33 in 3 years', Johnson: '6 in one week' }

def show_record
  puts @record
end

def compare_pms
puts "Choose a Prime Minister (Thatcher, Major, Blair, Brown, Cameron, May, Johnson)"
pm_one = gets.downcase.capitalize.chomp
puts "Choose another Prime Minister (Thatcher, Major, Blair, Brown, Cameron, May, Johnson)"
pm_two = gets.downcase.capitalize.chomp

  x = [@effectiveness[pm_one.intern], @effectiveness[pm_two.intern]].sort
  puts "#{@effectiveness.key(x[0])} is #{(x[1]/x[0]).round} times more effective than #{@effectiveness.key(x[1])}."
end

def display_pm
  puts "Choose a Prime Minister (Thatcher, Major, Blair, Brown, Cameron, May, Johnson)"
  pm = gets.downcase.capitalize.chomp
  puts "#{pm}'s record for parliamentary defeats: #{@defeats[pm.intern]}"
end

def menu
  puts "After Boris Johnson's record 6 defeats in one week- compare the effectiveness of Prime Ministers"
  puts ' '
  loop do
  puts 'Choose 1 to show the record of all PMs; 2 to compare two PMs; or 3 to see an individual record. 4 to exit'
  input(gets.chomp)
  end
end


def input(choice)
  case choice
  when '1'
    show_record
  when '2'
    compare_pms
  when '3'
    display_pm
  when '4'
    exit
  end
end

menu
