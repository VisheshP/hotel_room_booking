class HotelsController < ApplicationController

    def index
        begin
            if params[:hotel] && params[:hotel].has_key?(:name)
                string = params[:hotel][:name]
                @hotels = Hotel.where('name like ?', string)
            else
                @hotels = Hotel.all
            end
        rescue
            puts 'error occoured'
        end
    end
end