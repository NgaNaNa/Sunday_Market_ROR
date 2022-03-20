class Listing < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_one :order
    
    enum condition: {
        excellent: 0,
        good: 1,
        fair: 2,
        poor:3
    }

    validates :title, :description, :price, :condition, :category, presence: true 
    validates :title, length: {maximum: 100}

    private
    
    def remove_whitespace 
        self.title = self.title.strip
        self.description = self.description.strip
    end

    def convert_price_to_cents 
        self.price = (self.attributes_before_type_cast["price"].to_f * 100).round
    end
end
