class CalculationsController < ApplicationController

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square_results
    #parameters: ("User_num"=>"22")
    @user_num = params[:user_num].to_f
    render("calculations/square_results.html.erb")
  end


  def flexible_square
    # parameters: {number"=>"8"}
    @user_num = params["number"].to_f  #load it in as a float variable

    @user_square = (@user_num ** 2)

    render("calculations/flexible_square.html.erb")
  end

  def flexible_squareroot
    # parameters: {number"=>"8"}
    @user_num = params["number"].to_f  #load it in as a float variable

    @user_squareroot = (@user_num ** 0.5)

    render("calculations/flexible_squareroot.html.erb")
  end

  def flexible_payment
    # parameters: {number"=>"8"}
    @user_apr = params["apr"].to_f  #load it in as a float variable
    @user_year = params["year"].to_f  #load it in as an float variable
    @user_principle = params["principle"].to_f  #load it in as a float variable

    #mortgage calculations
    @user_monthly_payment = ((((@user_apr/10000)/12) * @user_principle) / (1 - (1 + ((@user_apr/10000)/12)) ** ( -(@user_year * 12))))

    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random_number
    # parameters: {number"=>"8"}
    @min_num = params["min_num"].to_f  #load it in as a float variable
    @max_num = params["max_num"].to_f  #load it in as an float variable

    #random number calculations
    @random_number = rand(@max_num-@min_num)+@min_num

    render("calculations/flexible_random_number.html.erb")
  end





end
