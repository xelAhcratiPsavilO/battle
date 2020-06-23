# frozen_string_literal: true

feature 'Attack' do
  scenario 'attack Player2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Christina attacked Alex'
  end

  scenario 'reduce Player2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Alex: 100HP'
    expect(page).to have_content 'Alex: 90HP'
  end

  scenario 'attack Player1' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Alex attacked Christina'
  end

  scenario 'reduce Player1 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Christina: 100HP'
    expect(page).to have_content 'Christina: 90HP'
  end
end
