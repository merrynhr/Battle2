feature 'view points' do
  scenario 'see points for Player 2' do
    visit('/')
    fill_in('p1_name', with: 'Cynthia')
    fill_in('p2_name', with: 'Joomin')
    click_button('Submit')
    expect(page).to have_content("#{@p2_name}: 50HP")
  end
end