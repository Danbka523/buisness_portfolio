class PortfolioController<ApplicationController

    def new
       # @portfolio = Portfolio.new()
    end

    def create
        @portfolio = Portfolio.new()
        @portfolio.user_id = session[:user_id]
        @portfolio.currency_id = Currency.find_by(curr: params[:curr]).c_id
        if (@portfolio.save)
            @portfolio.p_id = @portfolio.id
            @portfolio.save
            redirect_to '/profile'
        end
    end

end