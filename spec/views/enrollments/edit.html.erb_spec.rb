require 'rails_helper'

RSpec.describe "enrollments/edit", type: :view do
  before(:each) do
    @enrollment = assign(:enrollment, Enrollment.create!(
      :student => "MyString",
      :course => "MyString"
    ))
  end

  it "renders the edit enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollment_path(@enrollment), "post" do

      assert_select "input#enrollment_student[name=?]", "enrollment[student]"

      assert_select "input#enrollment_course[name=?]", "enrollment[course]"
    end
  end
end
