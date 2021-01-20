class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over = true
      self.take_turn
    end

    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence

    unless @game_over == true
      self.round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color
    @seq.each do |ele|
      p ele
    end
  end

  def require_sequence
    p "Please type the color that is first in sequence in lowercase letters!"
    @seq.each do |ele|
      input = gets.chomp
      if input == ele
        p "Please type the next color in lowercase letters"
      else
        @game_over = true
      end
    end

  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "You are right!"
  end

  def game_over_message
    p "Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
