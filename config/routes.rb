Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do

########EXAMPLES############
    #squared
    get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

    #square root
    get("/flexible/squareroot/:number", {:controller => "calculations", :action => "flexible_squareroot"})

    #payment
    get("/flexible/payment/:apr/:year/:principle", {:controller => "calculations", :action => "flexible_payment"})

    #random number
    get("/flexible/random/:min_num/:max_numx", {:controller => "calculations", :action => "flexible_random_number"})

###### FORMS ###########

    #square form
    get("/square/new", {:controller => "calculations", :action => "square_form"})
    #square root form
    get("/squareroot/new", {:controller => "calculations", :action => "squareroot_form"})
    #oayment form
    get("/payment/new", {:controller => "calculations", :action => "payment_form"})
    #random form
    get("/random/new", {:controller => "calculations", :action => "random_form"})



####### RESULTS ######
    #square results
    get("/square/results", {:controller => "calculations", :action => "square_results"})



  end



end
