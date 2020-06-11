# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs Player2'
  end
end
