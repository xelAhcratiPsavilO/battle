# frozen_string_literal: true

feature 'Switch turns' do
  scenario 'Player1 turn' do
    sign_in_and_play
    expect(page).to have_content "Christina's turn"
  end
  scenario 'Player2 turn' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content "Alex's turn"
  end
end
