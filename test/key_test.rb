gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_it_can_hold_a_key
    result = Key.new
    assert_equal "#<Key", result.itself.to_s.chars.first(5).join("")
  end

end
