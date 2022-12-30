class ToolController<ApplicationController
    def new
    end
    def create 
        @tool = Tool.new()
        @tool.p_id = Portfolio.find_by(name_p:params[:p_id]).p_id
        @tool.c_id = Currency.find_by(curr: params[:curr]).c_id    
        @tool.name = params[:name]
        @tool.count = params[:count]
        @tool.price = params[:price]
        p @tool
        if (@tool.save!)
            p "============================================"
            @tool.t_id = @tool.id 
            @tool.save
            redirect_to '/profile/portfolios'
        else 
            p "================="
        end
    end
    def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy    
    redirect_to '/profile/portfolios'
    end
end