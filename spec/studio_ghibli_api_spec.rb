require 'studio_ghibli_api'

describe StudioGhibli do
  before :each do
    @studio_ghilbli = StudioGhibli.new
  end

  describe '#films' do
    it 'should return an array of hashes that are studio ghibli films' do
      expect(@studio_ghilbli.films[0]).to be_a(Hash)
    end

    it 'should have "Castle in the Sky" as the title of the first hash' do
      expect(@studio_ghilbli.films[0]).to include("title" => "Castle in the Sky")
    end

    it 'should have "When Marnie Was There" as the title of the last hash' do
      expect(@studio_ghilbli.films[-1]).to include("title" => "When Marnie Was There")
    end
  end

  describe '#sort_by_title' do
    it 'should have "Arrietty" as the title of the first hash' do
      expect(@studio_ghilbli.sort_by_title[0]).to include("title" => "Arrietty")
    end

    it 'should have "Whisper of the Heart" as the title of the last hash' do
      expect(@studio_ghilbli.sort_by_title[-1]).to include("title" => "Whisper of the Heart")
    end
  end
end
 