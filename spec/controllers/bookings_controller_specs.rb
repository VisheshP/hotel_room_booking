require 'rails_helper'
RSpec.describe BookingsController, type: :controller do
    describe '#index' do    
        it 'returns successful response' do
            get :index
            expect(response).to be_successful
        end
    end

    describe '#cancel' do    
        before(:each) do
            user = User.create(name: 'vishesh')
            hotel = Hotel.create(name: 'Taj')
            @booking = Booking.create(hotel_id: hotel.id, user_id: user.id, start_date: Date.today, end_date: Date.today + 2, booking_status: 'booked', rooms: 3)
        end
        it 'returns successful response' do
            
            put("bookings/#{@booking.id}/cancel")
            expect(response).to be_successful
        end
    end
end