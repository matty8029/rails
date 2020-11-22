require 'test_helper'

class YoutubeUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtube_url = youtube_urls(:one)
  end

  test "should get index" do
    get youtube_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_youtube_url_url
    assert_response :success
  end

  test "should create youtube_url" do
    assert_difference('YoutubeUrl.count') do
      post youtube_urls_url, params: { youtube_url: { name: @youtube_url.name, url: @youtube_url.url } }
    end

    assert_redirected_to youtube_url_url(YoutubeUrl.last)
  end

  test "should show youtube_url" do
    get youtube_url_url(@youtube_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtube_url_url(@youtube_url)
    assert_response :success
  end

  test "should update youtube_url" do
    patch youtube_url_url(@youtube_url), params: { youtube_url: { name: @youtube_url.name, url: @youtube_url.url } }
    assert_redirected_to youtube_url_url(@youtube_url)
  end

  test "should destroy youtube_url" do
    assert_difference('YoutubeUrl.count', -1) do
      delete youtube_url_url(@youtube_url)
    end

    assert_redirected_to youtube_urls_url
  end
end
