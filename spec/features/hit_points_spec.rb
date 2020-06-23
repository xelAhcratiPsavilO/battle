# frozen_string_literal: true

feature 'Hit points' do
  scenario 'see Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex: 100HP'
  end
  scenario 'see Player1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Christina: 100HP'
  end
end
