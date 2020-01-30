require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse 
  end #do

  get "/square/:number" do
    @num = params[:number].to_i
    @square = @num * @num
    @square.to_s
  end #do

  get "/say/:number/:phrase" do
    @str = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do 
      @str += @phrase
    end #loop
    @str 
  end #do

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end #do

  get "/:operation/:number1/:number2" do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    @operation = params[:operation]
    
    if @operation == "add"
      @result = @num_1 + @num_2
    elsif @operation == "subtract"
      @result = @num_1 - @num_2
    elsif @operation == "multiply"
      @result = @num_1 * @num_2
    elsif @operation == "divide"
      @result = @num_1.to_f / @num_2 
    end #if

    @result.to_s 
  end

end