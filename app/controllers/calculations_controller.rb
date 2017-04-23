class CalculationsController < ApplicationController

  ##### FORMS #####
  def square_form
    render("calculations/square_form.html.erb")
  end
  def square_root_form
    render("calculations/square_root_form.html.erb")
  end
  def payment_form
    render("calculations/payment_form.html.erb")
  end
  def random_form
    render("calculations/random_form.html.erb")
  end



  ##### RESULTS #####
  def square_results
    #parameters: ("User_num"=>"22")
    @user_num = params[:user_num].to_f
    render("calculations/square_results.html.erb")
  end

  def square_root_results
    # parameters: {number"=>"8"}
    @user_numsq = params["user_numsq"].to_f  #load it in as a float variable

    @user_squareroot = (@user_numsq ** 0.5)

    render("calculations/square_root_results.html.erb")
  end

  def payment_results
    # parameters: {number"=>"8"}
    @user_apr = params["apr"].to_f  #load it in as a float variable
    @monthly_apr = ((@user_apr/100)/12)  #convert to monthly and round to 4 digits
    @user_year = params["years"].to_f  #load it in as an float variable
    @user_principal = params["principal"].to_f  #load it in as a float variable

    #mortgage calculations
    @user_monthly_payment = ((((@monthly_apr * @user_principal)) / ((1 - (1 + (@monthly_apr)) ** ( -(@user_year * 12))))))

    render("calculations/payment_results.html.erb")
  end

  def random_results
    # parameters: {number"=>"8"}
    @min_num = params["min_num"].to_f  #load it in as a float variable
    @max_num = params["max_num"].to_f  #load it in as an float variable

    #random number calculations
    @random_number = rand(@max_num-@min_num)+@min_num

    render("calculations/random_results.html.erb")
  end






  ##### EXAMPLES #####
  def flexible_square
    # parameters: {number"=>"8"}
    @user_num = params[:number].to_f  #load it in as a float variable

    @user_square = (@user_num ** 2)

    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root
    # parameters: {number"=>"8"}
    @user_numsq = params[:number].to_f  #load it in as a float variable

    @user_squareroot = (@user_numsq ** 0.5)

    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment
    # parameters: {number"=>"8"}
    @basis_points = params[:apr].to_f  #load it in as a float variable
    @user_apr = (@basis_points/100)  #convert basis points to apr
    @user_year = params[:years].to_i  #load it in as an float variable
    @user_principal = params[:principal].to_f  #load it in as a float variable

    #mortgage calculations
    @user_monthly_payment = ((((@user_apr/100)/12) * @user_principal) / (1 - (1 + ((@user_apr/100)/12)) ** ( -(@user_year * 12))))

    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random_number
    # parameters: {number"=>"8"}
    @min_num = params[:min_num].to_f  #load it in as a float variable
    @max_num = params[:max_num].to_f  #load it in as an float variable

    #random number calculations
    @random_number = rand(@max_num-@min_num)+@min_num

    render("calculations/flexible_random_number.html.erb")
  end





end
