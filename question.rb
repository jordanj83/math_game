class Question
attr_accessor :answer
  def initialize(num1, num2)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @question = "What does #{@num1} '+' #{@num2} equal?"
  end

end


