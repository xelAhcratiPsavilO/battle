# frozen_string_literal: true

def sign_in_and_play(computer = false)
  visit('/')
  fill_in :player1_name, with: 'Christina'
  fill_in :player2_name, with: 'Alex' unless computer
  click_button 'Submit'
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end
