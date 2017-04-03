require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "MyString",
      :code => "MyString",
      :teacher => "MyString",
      :quota => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_teacher[name=?]", "course[teacher]"

      assert_select "input#course_quota[name=?]", "course[quota]"
    end
  end
end
