def sign_in_and_play
  visit('/')
  fill_in('p1_name', with: 'Cynthia')
  fill_in('p2_name', with: 'Merryn')
  click_button('Submit')
end