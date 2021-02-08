class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10)
  end

  def score

    letters = params[:letters].split 
    answer = params[:answer].upcase.chars

    if params[:answer].upcase.chars.all?{|letter| params[:answer].count(letter)  <= params[:letters].count(letter) }
    @result = "name with good letters"

    else
      @result = "valid word"
    end
  end

end
