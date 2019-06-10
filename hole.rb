# belongs_to :course
# has_many :players
# 

class Hole
  attr_accessor :par
  attr_accessor :number
  attr_accessor :handicap

  def initialize number, par, handicap
  	@par = par
  	@number = number
  	@handicap = handicap

  	raise "A hole must have a par" unless @par
  	raise "A hole must have a number" unless @number
  	raise "A hole must have a handicap" unless @handicap
  end

end
