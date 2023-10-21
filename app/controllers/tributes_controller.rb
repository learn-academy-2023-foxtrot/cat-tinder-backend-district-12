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
        update_tribute = Tribute.update(tribute_params)
        if update_tribute.valid?
            render json: update_tribute
        else
            render json: update_tribute.errors, status: 422
        end

    end
  
    def destroy
    end

    private
    def tribute_params
        params.require(:tribute).permit(:name, :age, :hobby, :image, :district)
    end
end
