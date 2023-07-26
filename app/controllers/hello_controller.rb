class HelloController < ApplicationController
  def index
    require 'open-uri'
    require 'nokogiri'
    
    url = "https://style.potepan.com/"
    
    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end
    
    page = Nokogiri::HTML.parse(html, nil, charset)
    
    p page.search("title").text
  end
  def saytest
    render html:"テストテスト!"
  end
end
