class Listing < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_one :order
    
    enum condition: {
        excellent: 0,
        good: 1,
        fair: 2,
        poor:3
    }
end
