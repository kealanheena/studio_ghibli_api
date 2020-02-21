feature "Index" do
  let(:first_film) { "When Marnie Was There" }
  let(:second_film) { "The Tale of the Princess Kaguya" }

  scenario "Index page displays the titles of Ghibli movies" do
    visit("/")
    expect(page).to have_content("My Neighbor Totoro")
    expect(page).to have_content("Only Yesterday")
  end

  scenario "Index page displays the titles in order of release date(new - old)" do
    visit("/")
    expect(first_film).to appear_before(second_film, only_text: true)
  end
end
