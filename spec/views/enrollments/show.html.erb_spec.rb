require 'rails_helper'

RSpec.describe "enrollments/show", type: :view do
  before(:each) do
    @enrollment = assign(:enrollment, Enrollment.create!(
      :student => "Student",
      :course => "Course"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Student/)
    expect(rendered).to match(/Course/)
  end
end
