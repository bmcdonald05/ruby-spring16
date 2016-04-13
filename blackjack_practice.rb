class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit, @value = suit, value
  end
  def value
    return 10 if ["J", "Q", "K"].include?(@value)
    return 11 if @value == "A"
    return @value
  end
  def to_s
    "#{@value}-#{@suit}"
  end
end
class Deck
  attr_reader :cards
  def initialize
    @cards = Deck.build_cards
  end
  def self.build_cards
    cards = []
    %w[clubs, diamonds, spades, hearts].each do |suit|
      (2..10).each do |number|
        cards << Card.new(suit, number)
      end
      ["J", "Q", "K", "A"].each do |facecard|
        cards << Card.new(suit, facecard)
      end
    end
    cards.shuffle
  end
end
class Player
  attr_reader :name
  attr_accessor :playing_hand, :initbank, :bank
  def initialize(name, initbank, bank, playing_hand)
    @name, @initbank, @bank, @playing_hand = name, initbank, bank, playing_hand
  end
end
class Hand
  attr_accessor :cards
  def initialize
    @cards = []
  end
  def hit!(deck)
    @cards << deck.cards.shift
  end
  def cards
  @cards.each{|c| c.to_s}
  end
  def value
    cards.inject(0) {|sum, card| sum += card.value }
  end
  def to_s
    "#{@value}-#{@suit}"
  end
end
class Game
  attr_reader :player_hand, :dealer_hand
  def initialize
    @deck = Deck.new
    @dealer_hand = Hand.new
    2.times { @dealer_hand.hit!(@deck) }
  end
  def initial_players
    num = 0
    @pot = 0
    @table = []
    puts "How many people are playing tonight?"
    how_many = gets.chomp.to_i
    how_many.times do
      puts "Player #{num +=1 } what's your name?"
      name = gets.chomp.capitalize
      puts "How much are you starting with?"
      start_bank = gets.chomp.to_i
      bank = start_bank
      puts "What's your entry bet?"
      bet = gets.chomp.to_i
      bank-= bet
      @pot += bet
      playing_hand = Hand.new
      2.times {playing_hand.hit!(@deck)}
      @table << player = Player.new(name, start_bank, bank, playing_hand)
    end
  end
  def again
    @table.each do |pl|
      puts "What's your entry bet?"
      bet = gets.chomp.to_i
      pl.losses+=bet
      pl.playing_hand = Hand.new
      2.times{pl.playing_hand.hit!(@deck)}
    end
    playing
  end
  def comp
    if @dealer_hand.value > 21
      @dealer_hand = nil
    elsif @dealer_hand.value == 21
      puts "Dealer has 21. Dealer Wins!"
      @pot = 0
      question
    elsif @dealer_hand.value < 17
      @dealer_hand.hit!(@deck)
      comp
    end
  end
  def playing
    comp
    @table.each do |pl|
      status(pl)
    end
    if @table.length >= 1
      winner
    else
      puts "The dealer wins with #{@dealer_hand.value}"
    end
  end
  def status(pl)
      if pl.playing_hand.value > 21
        puts "Sorry you've surpassed 21 and are now at #{pl.playing_hand.value}, you're out!"
        @table.delete(pl)
       elsif pl.playing_hand.value == 21
        puts "#{pl.name} got 21, they won!"
        pl.bank += @pot
        question
      else
        print "#{pl.name} your cards are "
       pl.playing_hand.cards.each{|s| print "#{s} "}
      print " for a total of #{pl.playing_hand.value}. Would you like to hit or stand?"
        input = gets.chomp.downcase
        if input == 'hit'
          pl.playing_hand.hit!(@deck)
          status(pl)
        else
          puts "Okay you've chosen to stand."
      end
    end
  end
  def winner
    @table.sort {|a, b| p a.playing_hand.value <=> b.playing_hand.value}
    top_player = @table[-1]
    if @dealer_hand != nil && top_player.playing_hand.value > @dealer_hand.value
      puts "The big winner is #{top_player.name} with a total of  #{top_player.playing_hand.value}. The dealer had #{@dealer_hand.value}. Play again?"
      top_player.bank += @pot
    elsif @dealer_hand == nil
      puts "The big winner is #{top_player.name} with a total of  #{top_player.playing_hand.value}. The Dealer busted."
      top_player.bank += @pot
    else
      puts "The dealer has #{@dealer_hand.value}, the dealer wins!"
      @pot=0
    end
    question
  end
  def question
    @pot = 0
    puts 'Reply yes to play a new game.'
    input = gets.chomp.downcase
    if input == "yes"
      wal = Game.new
      @dealer_hand = Hand.new
      2.times { @dealer_hand.hit!(@deck) }
      again
    else
      @table.each do |pl|
      puts "#{pl.name}, you've lost $#{pl.initbank - pl.bank}"
      end
    end
  end
end

wal = Game.new
wal.initial_players
wal.playing





