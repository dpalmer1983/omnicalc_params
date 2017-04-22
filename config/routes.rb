Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do

    #squared
    get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

    #square root
    get("/flexible/squareroot/:number", {:controller => "calculations", :action => "flexible_squareroot"})

    #payment
    get("/flexible/payment/:apr/:year/:principle", {:controller => "calculations", :action => "flexible_payment"})

    #random number
    get("/flexible/random/:min_num/:max_num", {:controller => "calculations", :action => "flexible_random_number"})


    #square form
    get("/square/new", {:controller => "calculations", :action => "square_form"})

    #square results
    get("/square/results", {:controller => "calculations", :action => "square_results"})



  end



end
