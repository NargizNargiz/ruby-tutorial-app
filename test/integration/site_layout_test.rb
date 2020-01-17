require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layouts links" do
	  get root_path
	  assert_template 'static_pages/home'
	  assert_select "a[href=?]", root_path, count: 2
	  assert_select "a[href=?]", help_path
	  assert_select "a[href=?]", about_path
	  assert_select "a[href=?]", contact_path
	  assert_select "a[href=?]", signup_path
	  get signup_path
	  assert_select "title", full_title("Sign up")
	  # райлс автоматически ставит вместо знака вопроса последующие 
	  # пути - рут\хелп\обоут\контакт
	  # проверяется наличие тега <a href="/about">...</a> (в случае обоут)
end

end
