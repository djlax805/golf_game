# belongs_to :game
# has_many :scores
# has_one :handicap - this seems over OO
require_relative 'hole'

require 'pry'

class Player
  attr_accessor :handicap
  attr_accessor :score

  def initialize name, handicap
  	@name = name
  	@handicap = handicap

  	raise "A player must have a name" unless @name
  	raise "A player must have a handicap" unless @handicap
  end

  def net_score score, hole
	# binding.pry
	strokes_to_subtract = if stroke? hole
							1
						else
							0
						end

	score - strokes_to_subtract
  end

  private

  def stroke? hole
  	@handicap >= hole.handicap
  end

end

p = Player.new 'dj', 6

h    = Hole.new 1, 4, 1
h2   = Hole.new 2, 5, 2
h3   = Hole.new 3, 3, 3
h4   = Hole.new 4, 4, 4
h5   = Hole.new 5, 5, 5
h6   = Hole.new 6, 4, 6
h7   = Hole.new 7, 4, 7
h8   = Hole.new 8, 3, 8
h9   = Hole.new 9, 4, 9

h10 = Hole.new 10, 4, 10
h11 = Hole.new 11, 3, 11
h12 = Hole.new 12, 4, 12
h13 = Hole.new 13, 5, 13
h14 = Hole.new 14, 4, 14
h15 = Hole.new 15, 4, 15
h16 = Hole.new 16, 5, 16
h17 = Hole.new 17, 4, 17
h18 = Hole.new 18, 3, 18

net_score = [
	p.net_score(5, h),
	p.net_score(4, h2),
	p.net_score(6, h3),
	p.net_score(5, h4),
	p.net_score(5, h5),
	p.net_score(4, h6),
	p.net_score(3, h7),
	p.net_score(4, h8),
	p.net_score(4, h9),
	p.net_score(5, h10),
	p.net_score(3, h11),
	p.net_score(5, h12),
	p.net_score(7, h13),
	p.net_score(5, h14),
	p.net_score(4, h15),
	p.net_score(4, h16),
	p.net_score(5, h17),
	p.net_score(5, h18)
].inject(:+)

gross_score = [
	5,4,6,5,5,4,3,4,4,5,3,5,7,5,4,4,5,5
	].inject(:+)

p "net score: #{net_score}"
p "gross score: #{gross_score}"
