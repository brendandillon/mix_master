require 'rails_helper'

RSpec.feature "User edits a song" do

  scenario "they see the updated song" do
    artist = create(:artist)
    song = create(:song)

    new_title = "Computer Love"
    visit song_path(song)
    click_on "Edit"
    fill_in "song_title", with: new_title
    click_on "Update Song"

    expect(page).to have_content new_title
    expect(page).to have_link song.artist.name, artist_path(song.artist)
  end
end
