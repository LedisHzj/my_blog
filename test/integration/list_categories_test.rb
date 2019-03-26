require 'test_helper'

class ListCategoryTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "sports")
    @category2 = Category.create(name: "programing")
  end

  test "should show category list" do
    get categories_path
    assert_template 'category/index'
    assert_select "a[href=?]", category_path(@category), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end

end