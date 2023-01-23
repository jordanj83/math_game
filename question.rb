class Question
  attr_accessor :question, :answer

  def initialize
    #initialize two numbers between 1 and 20 
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
    @question = "What is #{@number1} + #{@number2} = ?"
  end

end