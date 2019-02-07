require 'rails_helper'

context 'as a visitor' do
  describe 'when I visit /' do
    it 'has a link to register' do
      visit root_path

      expect(page).to have_link("Register Here")
      click_link("Register Here")

      expect(current_path).to eq(new_user_path)
    end
  end
end
