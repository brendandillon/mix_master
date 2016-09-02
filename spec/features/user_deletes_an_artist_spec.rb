require 'rails_helper'

RSpec.feature "User deletes an artist" do
  scenario "they see all artists minus the one they deleted" do
    artist = Artist.create(name:"tune-yards", image_path:"http://imgur.com/bob")

    visit artist_path(artist)
    click_on "Delete"

    expect(page).to have_content "All Artists"
    expect(page).not_to have_content "tune-yards"
  end
end
