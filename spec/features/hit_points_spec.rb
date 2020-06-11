# frozen_string_literal: true

feature 'Hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Player2: 100HP'
  end
  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex: 100HP'
  end
end
