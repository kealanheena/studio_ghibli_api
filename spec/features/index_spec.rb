feature "Index" do
  scenario "Index page displays the titles of Ghibli movies" do
    visit("/")
    expect(page).to have_content("My Neighbor Totoro")
    expect(page).to have_content("Only Yesterday")
  end
end
