require 'rails_helper'

RSpec.feature "user visits all artists" do
  scenario "they see the index of all artists" do
    artist = Artist.create(name:"tune-yards", image_path:"http://imgur.com/bob")

    visit artists_path

    expect(page).to have_link(artist.name, href: artist_path(artist))
  end
end

