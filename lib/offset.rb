class Offset

attr_reader :date

  def initialize(input_date=0)
     @date = input_date.to_s.rjust(6, "0")
  end

  def date
    @date
  end

  def offsets
    squared.chars.map(&:to_i).last(4)
  end

  def self.today
    Time.now.strftime("%d%m%y")
  end

  private
  def squared
    (@date.to_i ** 2).to_s.rjust(6,"0")
  end



end
