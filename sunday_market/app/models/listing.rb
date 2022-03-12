class Listing < ApplicationRecord
    enum condition: {
        excellent: 0,
        good: 1,
        fair: 2,
        poor:3
    }
end
