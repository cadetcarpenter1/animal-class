require "minitest/autorun"
require_relative "panda.rb"

class Testpandafunctions <Minitest::Test 
	def test_class_returns_name
    	animal = Panda.new("poe")
		assert_equal("poe",animal.name)
	end
	def test_class_returns_sound
		animal = Panda.new("poe")
		assert_equal("roar",animal.sound)
	end	
	def test_class_returns_action
		animal = Panda.new("oreo")
		assert_equal("eats",animal.action)
		assert_equal("oreo",animal.name)
		assert_equal("roar",animal.sound)
	end
	def test_class_returns_char_length
		animal = Panda.new("bob")
		assert_equal(3,animal.name_count)
	end	
    def test_class_returns_char_length
    	animal = Panda.new("paul")
    	assert_equal(4,animal.name_count)
    end
    def test_class_returns_char_length
        animal = Panda.new("rodger")
        assert_equal(6,animal.name_count)
    end
    def test_class_returns_if_letter_included_in_name
       animal = Panda.new("rodger")
        letter = "r"
        assert_equal(true,animal.correct_letter?(letter))
    end 
    def test_class_two_returns_if_letter_included_in_name
        animal = Panda.new("rodger")
         letter = "o"
         assert_equal(true,animal.correct_letter?(letter)) 
    end
    def test_class_three_returns_if_letter_included_in_name
        animal = Panda.new("rodger")
         letter = "d"
         assert_equal(true,animal.correct_letter?(letter)) 
    end
     def test_class_returns_if_letter_not_included_in_name
      animal = Panda.new("rodger")
      letter = "b" 
      assert_equal(false,animal.correct_letter?(letter))
    end
    def test_class_returns_asterics
    animal = Panda.new("rodger")
    assert_equal(["*","*","*","*","*","*"],animal.asterics)
    end 
    def test_class_returns_asterics
    animal = Panda.new("wyatt")
    assert_equal(["*","*","*","*","*"],animal.asterics)        	
    end
    def test_class_user_guess_is_pushed_into_guess_array
    	animal = Panda.new("wyatt")
    	letter ="u"
    	assert_equal(["u"],animal.update_guessed(letter))
    end	
    def test_class_two_user_guess_is_pushed_into_guess_array
    	animal = Panda.new("wyatt")
    	animal.guessed = ["i","t","b"]
    	letter ="y"
    	assert_equal(["i","t","b","y"],animal.update_guessed(letter))
    end
    def test_class_user_guess_false
    	animal = Panda.new("wyatt")
    	animal.guessed =["e","r","p"]
    	letter = "s"
    	assert_equal(false,animal.verify_guessed(letter))
   end
   def test_class_two_user_guess_true
    	animal = Panda.new("wyatt")
    	animal.guessed =["w","y","a"]
    	letter = "t"
    	assert_equal(true,animal.verify_guessed(letter))
   end
  end 