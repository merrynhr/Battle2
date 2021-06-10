feature 'Attacking player' do 
  scenario ' attacking player 2 with confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{@p1_name} attacked #{@p2_name}"
  end
end