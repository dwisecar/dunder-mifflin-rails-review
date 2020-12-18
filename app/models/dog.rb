class Dog < ApplicationRecord
    has_many :employees

    def self.popular_dogs
        Dog.all.sort_by {|d| -d.employees.count}
    end
end
 