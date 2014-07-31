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
    @army
  end
end
