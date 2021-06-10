feature 'describe battle' do

  scenario 'can show player names on screen' do
    sign_in_and_play

    expect(page).to have_content('Cynthia vs. Joomin')
  end
end

