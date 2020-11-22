require "application_system_test_case"

class YoutubeUrlsTest < ApplicationSystemTestCase
  setup do
    @youtube_url = youtube_urls(:one)
  end

  test "visiting the index" do
    visit youtube_urls_url
    assert_selector "h1", text: "Youtube Urls"
  end

  test "creating a Youtube url" do
    visit youtube_urls_url
    click_on "New Youtube Url"

    fill_in "Name", with: @youtube_url.name
    fill_in "Url", with: @youtube_url.url
    click_on "Create Youtube url"

    assert_text "Youtube url was successfully created"
    click_on "Back"
  end

  test "updating a Youtube url" do
    visit youtube_urls_url
    click_on "Edit", match: :first

    fill_in "Name", with: @youtube_url.name
    fill_in "Url", with: @youtube_url.url
    click_on "Update Youtube url"

    assert_text "Youtube url was successfully updated"
    click_on "Back"
  end

  test "destroying a Youtube url" do
    visit youtube_urls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Youtube url was successfully destroyed"
  end
end
