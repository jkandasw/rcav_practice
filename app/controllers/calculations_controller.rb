class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    user_input=params[:number]
    int_user_input=user_input.to_i
    @result=int_user_input * int_user_input.to_i
  end

  def square_root
    user_input=params[:number]
    int_user_input=user_input.to_i
    @result=int_user_input ** 0.5
  end

  def random
    min_user_input=params[:min].to_i
      max_user_input=params[:max].to_i
      @result=rand(min_user_input...max_user_input)
  end

  def payment
    rate=params[:int_rate].to_i
    # percent_rate=rate/100
      principal=params[:principal].to_i
      period=params[:period].to_i
      @result= (rate * principal)/((1-(1+rate)**(period)))
  end


end
