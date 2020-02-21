feature "Highest Rated" do
  let(:first_film) { "The Tale of the Princess Kaguya" }
  let(:second_film) { "Only Yesterday" }
  let(:last_film) { "Grave of the Fireflies" }

  scenario "Highest Rated page displays the titles in order of release date(new - old)" do
    visit("/")
    expect(first_film).to appear_before(second_film, only_text: true)
    expect(second_film).to appear_before(last_film, only_text: true)
  end
end
