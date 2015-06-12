require 'rails_helper'

describe "Sign in flow" do 
  describe "User signs in" do 
    it "successfully" do
      user = create(:user)
      visit new_user_session_path

      # click_link 'Sign In'
      # There're two Sign In links in the page. So we need to specify.
      within '.user-info' do
        click_link 'Sign In'
      end
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password 

      within 'form' do 
        click_button 'Sign in'
      end

      expect(current_path).to eq topics_path  
      expect(page).to have_content "Hello #{user.name}"
    end

    it "unsuccessful" do
      user = create(:user)
      visit new_user_session_path

      fill_in 'Email', with: user.email
      fill_in 'Password', with: "wrong password"
      within 'form' do 
        click_button 'Sign in'
      end

      expect(current_path).to eq new_user_session_path  
      expect(page).to have_content "Invalid email or password."
    end
  end

end
