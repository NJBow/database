feature 'user signup' do
  scenario 'user can register a new account' do
    visit '/account/new'
    fill_in 'name', with: 'Jerry'
    fill_in 'username', with: 'silent_ninjaTruck87'
    fill_in 'password', with: 'qwertyuiop'
    click_button 'Register'
    users = User.all
    expect(users.count).to eq(1)
  end
end
