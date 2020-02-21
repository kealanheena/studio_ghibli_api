feature "Alphabetical" do
  let(:first_film) { "Arrietty" }
  let(:second_film) { "Castle in the Sky" }
  let(:last_film) { "Whisper of the Heart" }

  scenario "Alphabetical page displays the titles in alphabetical order" do
    visit("/alphabetical")
    expect(first_film).to appear_before(second_film, only_text: true)
    expect(second_film).to appear_before(last_film, only_text: true)
  end
end
