# Create a class called Bowling with instance variables score and score_text.

# When the .hit function is called from an instance of the Bowling class,
# it should increase the score by the integer argument it receives.

# The .score_text instance variable should return 'You scorex *X* points' points where *X* is the current score.

class Bowling

	def initialize()
		@score = 0;
		@score_text = "You scored #@score points";
	end

	def score
		puts @score
	end

	def score_text
		puts "You scored #@score points"
	end

	def hit(num)
		@score += num;
	end

end


n = Bowling.new

20.times { n.hit(2)}

puts n.score
puts n.score_text
