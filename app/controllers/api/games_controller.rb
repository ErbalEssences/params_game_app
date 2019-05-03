class Api::GamesController < ApplicationController

  def name_upper
    @name = params[:name].upcase 
    render 'params_name_upper_app.json.jbuilder'
  end 

  def name_game
    @name = params[:name]
    if @name[0].upcase  == "A"
      @response = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'params_name_app.json.jbuilder'
  end

  def game_guess
    @guess = params[:guess].to_i
    @message = "Guess what number I am thinking about"
    if @guess == 36
      @response = "Hey, you got it right!"
    elsif @guess < 36
      @response = "Go higher"
    elsif @guess > 36
      @response = "Go lower"
    end
    render 'params_number_app.json.jbuilder'
  end



  def name_upper_new
    @name = params[:name].upcase 
    render 'params_name_upper_app_new.json.jbuilder'
  end 

  def name_game_new
    @name = params[:name]
    if @name[0].upcase  == "A"
      @response = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'params_name_app_new.json.jbuilder'
  end

  def game_guess_new
    @guess = params[:guess].to_i
    @message = "Guess what number I am thinking about"
    if @guess == 36
      @response = "Hey, you got it right!"
    elsif @guess < 36
      @response = "Go higher"
    elsif @guess > 36
      @response = "Go lower"
    end
    render 'params_number_app_new.json.jbuilder'
  end


  def name_upper_secret
    @name = params[:name].upcase 
    render 'params_name_upper_app_secret.json.jbuilder'
  end 

  def name_game_secret
    @name = params[:name]
    if @name[0].upcase  == "A"
      @response = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'params_name_app_secret.json.jbuilder'
  end

  def game_guess_secret
    @guess = params[:guess].to_i
    @message = "Guess what number I am thinking about"
    if @guess == 36
      @response = "Hey, you got it right!"
    elsif @guess < 36
      @response = "Go higher"
    elsif @guess > 36
      @response = "Go lower"
    end
    render 'params_number_app_secret.json.jbuilder'
  end






end
