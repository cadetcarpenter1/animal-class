class Panda
	
	attr_accessor :name,:sound,:action,:guessed
	
	def initialize(animal_name)
    	@name = animal_name 
    	@sound = "roar"
    	@action = "eats"
    	@guessed = []
    end
    def update_guessed(choice)
    	guessed.push(choice)
    end	
    def verify_guessed(letter)
      guessed.include?(letter)
    end	
    def name_count
  	    name.length
    end	
    def correct_letter?(letter)
        name.include? (letter) 
    end	
    def asterics
    	Array.new(name_count,"*")
    end	

end