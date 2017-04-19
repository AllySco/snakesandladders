
class Die

attr_reader :number

def initialize
  @number = [1, 2, 3, 4, 5, 6]
end

def die_roll
  return @number.shuffle!.first
end



end