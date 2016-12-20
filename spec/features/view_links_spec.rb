require 'rails_helper'

RSpec.describe "Links index" do
  scenario "has a list of the top ten links" do
    create_list :read, 2, url: "http://www.google.com"
    create_list :read, 2, url: "http://www.turing.io"
    create_list :read, 2, url: "http://www.reddit.com"
    create_list :read, 2, url: "http://www.jumpstartlab.com"
    create_list :read, 2, url: "http://www.nytimes.com"
    create_list :read, 10

    visit root_path

    links.each do |link|
      expect(page).to have_content(link.title)
      expect(page).to have_content(link.url)
      expect(page).to have_content(link.count)
    end
  end
end
