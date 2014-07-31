class Clone
  attr_accessor :health, :name, :friend
  def initialize (attributes)
    @health = 10
    @name = attributes[:name]
    @friend = attributes[:friend]
  end
end

class Brad < Clone
  @@brads = []
  def initialize (attributes)
    super
    @@brads << self
  end
  def Brad.brads
    @@brads
  end
  def Brad.clearBrads
    @@brads = []
  end
end

class Angelena < Clone
  @@angelenas = []
  def initialize (attributes)
    super
    @@angelenas << self
  end
  def Angelena.angelenas
    @@angelenas
  end
  def Angelena.clearAngelenas
    @@angelenas = []
  end
end


