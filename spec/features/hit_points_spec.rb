# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'player_1_name', with: 'Alex'
    fill_in 'player_2_name', with: 'Player2'
    click_button 'Submit'
    expect(page).to have_content 'Alex vs Player2'
  end
end
