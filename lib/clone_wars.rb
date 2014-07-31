class Clone
  attr_accessor :health
  def initialize
    @health = 10
  end
end

class Brad < Clone
  @@brads = []
  def initialize
    super
    @eye_color = "blue"
    @@brads << self
  end
  def brads
    @@brads
  end
end

# class Angelena < Clone
#   def initialize
#     super
#     @eye_color = "grey"
#   end
# end

# class Scarlet < Clone
#   def initialize
#     super
#     @eye_color = "green"
#   end
# end

# class George < Clone
#   def initialize
