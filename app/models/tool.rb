class Tool < ApplicationRecord
    has_many :deals
    belongs_to :portfolio
end
