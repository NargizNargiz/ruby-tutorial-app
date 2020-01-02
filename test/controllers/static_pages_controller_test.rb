require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # гет означает что тесты ожидают от страниц хом о хелп поведеление обычных веб-страниц и ответ запроса должен быть саксесс

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"

  end
  test "should get about" do 
  	get static_pages_about_url
  	assert_response :success
    # check titlres from views
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"

  end

end
