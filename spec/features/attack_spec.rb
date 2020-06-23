# frozen_string_literal: true

feature 'Attack' do
  scenario 'attack Player2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Christina attacked Alex'
  end

  scenario 'reduce Player2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Alex: 100HP'
    expect(page).to have_content 'Alex: 90HP'
  end
end
