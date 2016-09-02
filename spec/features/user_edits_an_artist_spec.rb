require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "they see the updated artist" do
    artist = Artist.create(name:"tune-yards", image_path:"http://imgur.com/bob")

    visit artist_path(artist)
    click_on "Edit"
    
    fill_in "artist_name", with: "tUnE-yArDs"
    click_on "Update Artist"

    expect(page).to have_content "tUnE-yArDs"
    expect(page).to have_css "img[src=\"#{artist.image_path}\"]"
  end
end
