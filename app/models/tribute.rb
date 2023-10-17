class Tribute < ApplicationRecord
    validates :name, :age, :hobby, :image, :district,  presence: true
    validates :hobby, length: { minimum:10 } 
end
