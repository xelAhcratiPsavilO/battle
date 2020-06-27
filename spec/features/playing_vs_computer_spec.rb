# frozen_string_literal: true

feature 'Playing vs Computer' do
  scenario 'computer gets an automatic name' do
    sign_in_and_play(true)
    expect(page).to have_content 'Christina vs Com'
  end

  scenario 'computer makes an attack' do
    sign_in_and_play(true)
    attack_and_confirm
    expect(page).to have_content 'Com attacked Christina'
  end

  scenario 'computer attack damages player' do
    sign_in_and_play(true)
    attack_and_confirm
    click_button 'OK'
    expect(page).not_to have_content 'Christina: 100HP'
  end

  scenario 'computer can lose' do
    sign_in_and_play(true)
    allow(Kernel).to receive(:rand).and_return(100)
    click_button 'Attack'
    expect(page).to have_content 'Com loses!'
  end

  scenario 'computer can win' do
    sign_in_and_play(true)
    click_button 'Attack'
    allow(Kernel).to receive(:rand).and_return(100)
    click_button 'OK'
    expect(page).to have_content 'Christina loses!'
  end
end
