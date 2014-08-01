require './lib/clone'

class CloneWar

  attr_accessor :computer_army, :player_army
  def initialize
    @computer_army = []
    @computer_army = new_clone_army
    @player_army = []
    @player_army = new_clone_army
  end

  def new_clone_army
    @army = []
    rand(1..20).times do
      @army << Brad.new({:name => 'Brad'})
    end
    rand(1..20).times do
      @army << Angelena.new({:name => 'Angelena'})
    end
    rand(1..20).times do
      @army << Scarlet.new({:name => 'Scarlet'})
    end
    rand(1..20).times do
      @army << Bill.new({:name => 'Bill'})
    end
    @army
  end

  # Having all these seperate methods here is not compact,
  # but I beat my head against a wall for hours trying to be clever.
  # If you have a better idea, please suggest it.

  def number_of_brads_in_computer_army
    number_of_brads = 0
    @computer_army.each do |clone|
      if (clone.is_a? Brad)
        number_of_brads += 1
      end
    end
    number_of_brads
  end

  def number_of_angelenas_in_computer_army
    number_of_angelenas = 0
    @computer_army.each do |clone|
      if (clone.is_a? Angelena)
        number_of_angelenas += 1
      end
    end
    number_of_angelenas
  end

  def number_of_scarlets_in_computer_army
    number_of_scarlets = 0
    @computer_army.each do |clone|
      if (clone.is_a? Scarlet)
        number_of_scarlets += 1
      end
    end
    number_of_scarlets
  end

  def number_of_bills_in_computer_army
    number_of_bills = 0
    @computer_army.each do |clone|
      if (clone.is_a? Bill)
        number_of_bills += 1
      end
    end
    number_of_bills
  end

  def number_of_brads_in_player_army
    number_of_brads = 0
    @player_army.each do |clone|
      if (clone.is_a? Brad)
        number_of_brads += 1
      end
    end
    number_of_brads
  end

  def number_of_angelenas_in_player_army
    number_of_angelenas = 0
    @player_army.each do |clone|
      if (clone.is_a? Angelena)
        number_of_angelenas += 1
      end
    end
    number_of_angelenas
  end

  def number_of_scarlets_in_player_army
    number_of_scarlets = 0
    @player_army.each do |clone|
      if (clone.is_a? Scarlet)
        number_of_scarlets += 1
      end
    end
    number_of_scarlets
  end

  def number_of_bills_in_player_army
    number_of_bills = 0
    @player_army.each do |clone|
      if (clone.is_a? Bill)
        number_of_bills += 1
      end
    end
    number_of_bills
  end

end
