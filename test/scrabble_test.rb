gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_exists
    scrabble = Scrabble.new

    assert_instance_of Scrabble, scrabble
  end
  
  def test_it_can_score_a_single_letter
  
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 8, Scrabble.new.score('hello')
    assert_equal 9, Scrabble.new.score('world')
  end

  def test_it_can_handle_an_empty_string
    assert_equal 0, Scrabble.new.score('')
  end

  def test_it_can_handle_nil
    assert_equal 0, Scrabble.new.score(nil)
  end
end
