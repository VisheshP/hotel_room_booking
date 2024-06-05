require 'rails_helper'
RSpec.describe HotelsController, type: :controller do
    describe '#index' do    
        it 'returns successful response' do
            get :index
            expect(response).to be_successful
        end
    end
end