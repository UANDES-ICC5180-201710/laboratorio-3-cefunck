require 'rails_helper'

RSpec.describe "enrollments/index", type: :view do
  before(:each) do
    assign(:enrollments, [
      Enrollment.create!(
        :student => "Student",
        :course => "Course"
      ),
      Enrollment.create!(
        :student => "Student",
        :course => "Course"
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    assert_select "tr>td", :text => "Student".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
  end
end
