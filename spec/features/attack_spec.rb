# frozen_string_literal: true

feature 'Attack' do
  scenario 'attack Player2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Christina attacked Alex'
  end

  scenario 'attack Player1' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Alex attacked Christina'
  end

  scenario 'reduce Player 2 HP by 10' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Alex: 100HP'
    expect(page).to have_content 'Alex: 90HP'
    end

  scenario 'reduce Player2 HP by a random amount' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Alex: 90HP'
  end
end
