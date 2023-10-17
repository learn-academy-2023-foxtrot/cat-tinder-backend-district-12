class TributesController < ApplicationController
    def index
    tributes = Tribute.all 
    render json: tributes
    end
  
    def create
    tribute = Tribute.create(tribute_params)
    render json: tribute
    end
  
    def update
    end
  
    def destroy
    end

    private
    def tribute_params
        params.require(:tribute).permit(:name, :age, :hobby, :image, :district)
    end
end
