# frozen_string_literal: true

feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Player2'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Player2: 100HP'
    expect(page).to have_content 'Player2: 90HP'
  end
end
