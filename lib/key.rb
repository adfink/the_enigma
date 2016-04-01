require "byebug"
class Key

  attr_reader :key

  def initialize(key = "00000")
    @key = key.to_s.rjust(5,"0")
  end

  def rotations
    rotations_output = []
    @key.chars.each_cons(2) {|x| rotations_output << x}
    result = rotations_output.map {|x| x.join("").to_i}
    result
  end

  def self.generate
    new_key = []
    5.times do
      new_key << rand(9)
    end
  new_key.join("")
  end

end
