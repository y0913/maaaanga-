class Scraping
  def self.comic_urls
    agent = Mechanize.new
    links = []
    next_url = ""

    while true
      current_page = agent.get("" + next_url)
      elements = current_page.search('')
      elements.each do |ele|
        links << ele.get_attribute('href')
      end

      next_link = current_page.at('')
      break unless next_link
      next_url = next_link.get_attribute('href')

    end
    links.each do |link|
      get_comic('' + link)
    end
  end

  def self.get_comic(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('').inner_text if page.at('')

    image_url = page.at('')[:src] if page.at('')
    director = page.at('').inner_text if page.at('')
    detail = page.at('').inner_text if page.at('')
    open_date = page.at('').inner_text if page.at('')

    product = Product.where(title: title).first_or_initialize
    product.image_url = image_url
    product.director = director
    product.detail = detail
    product.open_date = open_date
    product.save
  end
end