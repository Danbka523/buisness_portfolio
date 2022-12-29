class ProfileController<ApplicationController
    def profile
    end

    def new 
    end

    def portfolios
        @portfolios = Portfolio.where(user_id:session[:user_id])
        @curr = Currency.all
    end

end