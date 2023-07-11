class Sum
  def initialize()
  end
  def add()
    puts 
    numbersArray = gets.split
    print numbersArray[0].to_i + numbersArray[1].to_i
  end
end

objectSum = Sum.new()
objectSum.add
gets()
