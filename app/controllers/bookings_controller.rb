class BookingsController < ApplicationController

    def new 
        @hotel_id = params[:hotel_id]
        @user_id = 1
        @booking = Booking.new
    end

    def create
        @booking_params = booking_params
        @booking_params[:booking_status] = 'booked'
        p @booking_params
        @booking = Booking.new(@booking_params)
        if @booking.save!
            redirect_to @booking
        else
            render 'new'
        end
    end

    def show
        @booking = Booking.find_by(id: params[:id])
    end

    def index
        @bookings = Booking.where(user_id: params[:user_id])
    end

    def edit
        @booking = Booking.find_by(id: params[:id])
        p @booking
        @hotel_id = @booking.hotel.id
        @user_id = 1
    end

    def update 
       if  @booking = Booking.update(booking_params)
            redirect_to booking_path(@booking)
       else
            render 'edit'
       end
    end

    def cancel
        @booking = Booking.find_by(id: params[:booking_id])
        @booking.booking_status = 'cancel'
        if @booking.save!
            render :json => {success: true} 
        end
        
    end
    private

    def booking_params
        params.require(:booking).permit!
    end
end