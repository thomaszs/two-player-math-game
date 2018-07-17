class Question 
  attr_accessor :num1, :num2, :question, :correct_answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{num1} plus #{num2} equal?"
    @correct_answer = num1 + num2
  end
end
