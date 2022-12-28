class Portfolio < ApplicationRecord
    has_many :tools
    belongs_to :user

    
end
