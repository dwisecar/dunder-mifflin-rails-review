class DogsController < ApplicationController 
    def index
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dogs
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end

end
