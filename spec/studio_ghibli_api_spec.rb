require 'studio_ghibli_api'

describe StudioGhibli do
  describe '#films' do
    it "should return an array of hashes that are studio ghibli films" do
      studio_ghilbli = StudioGhibli.new
      expect(studio_ghilbli.films[0]).to be_an(Hash)
    end
  end
end
