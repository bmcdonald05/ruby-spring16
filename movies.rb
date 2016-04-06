# Let's create a Movie info app! 
# Our app will tell you the name, year, director, and rating of a movie.
# Just make sure to include a class and I'll leave the rest of it up to you.

class Movie
	attr_accessor :name, :year, :director, :rating
	def initialize(name, year, director, rating)
		puts "What is the name of your movie?"
		@name = name
		@year = year
		@director = director
		@rating = rating
	end
	def show_me

	end
	def info
		puts @name
		puts @year
		puts @director
		puts @rating
	end
end

#dieHard = Movie.new("Die Hard", 1991, "The Guy", 4.5)
#puts dieHard.info
puts "What is the name of your movie?"
a = gets.chomp.capitalize
puts "What year was your movie made?"
b = gets.chomp.to_i
puts "Who directed the movie?"
c = gets.chomp.capitalize
puts "What rating did it recieve?"
d = gets.chomp.to_f

movie1 = Movie.new(a, b, c, d)
puts "So you're saying #{movie1.name} was realesed in #{movie1.year} by #{movie1.director} and was rated #{movie1.rating}?"





#########################################  Emili'y Code  ###################################
# class Movie
#   attr_reader :name, :year, :director, :rating
#   def initialize (name, year, director, rating)
#     @name = name
#     @year = year
#     @director = director
#     @rating = rating
#   end
# ​
#   def name_that
#     puts "please list your movie name"
#     movie_name= gets.chomp.capitalize
#     if movie_name == @name
#       puts "The movie #{@name} was directed by #{@director} in #{@year}. It has a rating of #{rating}"
#     else
#       puts "we don't have that movie"
#     end
#   end
# end
# my_movie= Movie.new('Minions', 2015, 'Disney', 9.5)
# my_movie.name_that