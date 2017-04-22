Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do

########EXAMPLES############
    #squared
    get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

    #square root
    get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})

    #payment
    get("/flexible/payment/:apr/:years/:principal", {:controller => "calculations", :action => "flexible_payment"})

    #random number
    get("/flexible/random/:min_num/:max_num", {:controller => "calculations", :action => "flexible_random_number"})

###### FORMS ###########

    #square form
    get("/square/new", {:controller => "calculations", :action => "square_form"})
    #square root form
    get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
    #oayment form
    get("/payment/new", {:controller => "calculations", :action => "payment_form"})
    #random form
    get("/random/new", {:controller => "calculations", :action => "random_form"})



####### RESULTS ######
    #square results
    get("/square/results", {:controller => "calculations", :action => "square_results"})
    #squareroot results
    get("/square_root/results", {:controller => "calculations", :action => "square_root_results"})
    #payment results
    get("/payment/results", {:controller => "calculations", :action => "payment_results"})
    #random results
    get("/random/results", {:controller => "calculations", :action => "random_results"})


  end



end
