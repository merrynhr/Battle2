feature 'describe battle' do

  scenario 'can show player names on screen' do
    visit('/')
    fill_in('p1_name', with: 'Cynthia')
    fill_in('p2_name', with: 'Joomin')
    click_button('Submit')

    #save_and_open_page

    expect(page).to have_content('Cynthia vs. Joomin')
  end
end

