feature 'view points' do
  scenario 'see points for Player 2' do
    sign_in_and_play
    
    expect(page).to have_content("#{@p2_name}: 50HP")
  end
end
