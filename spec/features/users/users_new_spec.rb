require 'rails_helper'

context 'as a visitor' do
  describe 'when I visit /users/new' do
    it 'displays a registration form' do
      julia = User.create(name: "JuliaMarco", email: "marcootj@gmail.com", password: "JuliaTuring1811")
      visit new_user_path

      fill_in 'user[name]', with: "JuliaMarco"
      fill_in 'user[email]', with: "marcootj@gmail.com"
      fill_in 'user[password]', with: "JuliaTuring1811"

      click_button "Register"

      expect(page).to have_content("Welcome, #{julia.name}")
    end
  end
end
