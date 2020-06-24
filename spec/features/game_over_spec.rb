# frozen_string_literal: true

feature 'Game over' do
  context 'when Player1 reaches 0 HP first' do
    before do
      sign_in_and_play
      18.times { attack_and_confirm }
    end

    scenario 'Player2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Alex loses!'
    end
  end
end
