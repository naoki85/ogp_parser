require "ogp_parser/version"
require "open-uri"
require "nokogiri"

module OgpParser

  # @param [String] url
  # @return [Hash || nil]
  def self.parse(url)
    html = read_html(url)
    return nil if html.nil?

    {
        title: parse_by_type(html, 'title'),
        description: parse_by_type(html, 'description'),
        image: parse_by_type(html, 'image'),
        url: parse_by_type(html, 'url')
    }
  end

  private

  def self.read_html(url)
    user_agent = { "User-Agent" => "OGP Parser" }
    charset = nil
    html = open(url, user_agent) do |f|
      charset = f.charset
      f.read
    end
    Nokogiri::HTML.parse(html, nil, charset)
  rescue StandardError => e
    p "Error: #{e}"
    nil
  end

  def self.parse_by_type(html, type)
    if html.at("//meta[@property='og:#{type}']/@content")
      html.at("//meta[@property='og:#{type}']/@content").value
    else
      ''
    end
  end
end
