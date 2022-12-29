class ToolController<ApplicationController
    def new
        p params
    end

    def create 
        @tool = Tool.new()
        @tool.p_id = session[:curr_port]
        @tool.c_id = Currency.find_by(curr: params[:curr]).c_id    
        @tool.name = params[:name]
        @tool.count = params[:count]
        @tool.price = params[:price]
        p @tool
        if (@tool.save)
            p "============================================"
            @tool.t_id = @tool.id 
            p @tool.save
            redirect_to '/profile/profile'
        else 
            p "================="
        end
    end
end