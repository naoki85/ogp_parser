RSpec.describe OgpParser do
  describe '::VERSION' do
    it "has a version number" do
      expect(OgpParser::VERSION).not_to be nil
    end
  end

  describe '.parse' do
    subject { OgpParser.parse('https://sample.com') }

    before do
      file_path = File.expand_path('../fixtures/sample_page.html', __FILE__)
      html = File.read(file_path)
      html = Nokogiri::HTML.parse(html, nil, 'utf-8')
      allow(OgpParser).to receive(:read_html).and_return(html)
    end

    it 'should get ogp params' do
      expect(subject[:title]).to eq 'Real World HTTP を読みました | BookRecorder'
    end
  end
end
