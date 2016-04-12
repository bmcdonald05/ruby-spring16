class Casino
  attr_accessor :start, :stack, :bet
  def initialize
  end
  def stack
    puts "How much in chips would you like?"
    @stack = gets.chomp.to_i
  end
  def bet
    puts "This table has a $5 minimum. How much would you like to bet?"
    @chips = gets.chomp.to_i
    @stack = @stack - @chips
  end
  def start
    puts "Welcome to The Venetian! Let's play some Blackjack!"
  end
end

class GamePlay < Casino
  attr_accessor :name, :dealer, :hit, :deal, :winner
  def initialize
    name
    start
    stack
    bet
    deal
    winner
  end
  def name
    @players = []
    reply = ""
    puts "Please enter the first name of all players, then enter 'done'"
    until reply == "done"
      reply = gets.chomp.downcase
      @players<<reply
    end
    @players.pop
  end
  def dealer
    @dealer = dealer
  end
  def hit
    @deck = ['A', 'a', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
    @suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
    @hand = []
    @deal_card = @deck.shuffle[1]
    @dealer_card = @deal_card
    @hand<<"#{@deal_card} ""#{@suits.shuffle[1]}"
  end
  def deal
    b = [10]
    c = [11]
    d = [1]
    @player_hand = []
    @dealer_hand = []
    @players.each do |shark|
      puts "#{shark}: "
      2.times do
        puts hit
        @player_hand<<@deal_card
      end
    end
    puts "Would you like to hit?"
    reply = gets.chomp.downcase
    if reply == "yes"
      puts hit
      @player_hand<<@deal_card
      puts "Would you like to hit again?"
      reply = gets.chomp.downcase
      if reply == "yes"
        puts hit
        @player_hand<<@deal_card
      else
        puts "No problem"
      end
    else
      puts "No problem."
    end
    @player_hand.map! { |x| x == 'J' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'Q' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'K' ? b : x }.flatten!
    @player_hand.map! { |x| x == 'A' ? c : x }.flatten!
    @player_hand.map! { |x| x == 'a' ? d : x }.flatten!
    puts "You have #{@player_hand.inject(:+)}"
    puts "Dealer: "
    2.times do
      puts hit
      @dealer_hand<<@deal_card
    end
    @dealer_hand.map! { |x| x == 'J' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'Q' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'K' ? b : x }.flatten!
    @dealer_hand.map! { |x| x == 'A' ? c : x }.flatten!
    @dealer_hand.map! { |x| x == 'a' ? d : x }.flatten!
    until @dealer_hand.inject(:+) > 15
      puts hit
      @dealer_hand<<@deal_card
    end
    puts "The Dealer has #{@dealer_hand.inject(:+)}"
  end
  def winner
    if @dealer_hand.inject(:+) > 21
      abort "The Dealer busts!"
    end
    if @player_hand.inject(:+) > 21
      abort "You busted!"
    end
    if @dealer_hand.inject(:+) >= @player_hand.inject(:+)
      dealer_wins
      puts "Would you like to play again?"
      reply = gets.chomp.downcase
      if reply == "yes"
        bet
        deal
        winner
      end
    elsif @player_hand.inject(:+) > @dealer_hand.inject(:+)
      you_win
      puts "Would you like to play again?"
      reply = gets.chomp.downcase
      if reply == "yes"
        bet
        deal
        winner
      end
    end
  end
  def you_win
    puts "You win!"
    puts "You just won #{@chips * 2} dollars!"
    @stack = @stack + (@chips * 2)
    puts "Now you have #{@stack} dollars!"
  end
  def dealer_wins
    puts "The Dealer wins, you lost"
    puts "You just lost #{@chips * 2} dollars."
    @stack = @stack - (@chips)
    puts "You now have #{@stack} dollars."
  end
end


player1 = GamePlay.new