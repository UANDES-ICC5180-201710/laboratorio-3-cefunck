require 'rails_helper'

RSpec.describe "enrollments/new", type: :view do
  before(:each) do
    assign(:enrollment, Enrollment.new(
      :student => "MyString",
      :course => "MyString"
    ))
  end

  it "renders new enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollments_path, "post" do

      assert_select "input#enrollment_student[name=?]", "enrollment[student]"

      assert_select "input#enrollment_course[name=?]", "enrollment[course]"
    end
  end
end
