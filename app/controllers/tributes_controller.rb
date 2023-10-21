class TributesController < ApplicationController
    def index
    tributes = Tribute.all 
    render json: tributes
    end
  
    def create
    new_tribute = Tribute.create(tribute_params)
        if new_tribute.valid?
            render json: new_tribute
        else
            render json: new_tribute.errors, status: 422
        end
    end
  
    def update
    tribute = Tribute.find(params[:id])
    tribute.update(tribute_params)
        if tribute.valid?
            render json: tribute
        else
            render json: tribute.errors, status: 422
        end
    end
  
    def destroy
    end

    private
    def tribute_params
        params.require(:tribute).permit(:name, :age, :hobby, :image, :district)
    end
end
