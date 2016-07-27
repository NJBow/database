feature 'creating links with tags' do

  scenario 'I can create a new link' do
    visit 'links/new'
    fill_in 'url', with: 'http://yahoo.com'
    fill_in 'title', with: 'Yahoo'
    fill_in 'tags', with: 'search productivity email'
    click_button 'Create link'
    expect(current_path).to eq '/links'

    link = Link.first
    expect(link.tags.map(&:name)).to include('search', 'productivity', 'email' )
  end
end
