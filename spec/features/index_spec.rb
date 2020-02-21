feature "Index" do
  scenario "Index page displays the titles of Ghibli movies" do
    visit("/")
    expect(page).to have_content("My Neighbor Totoro")
  end
end
