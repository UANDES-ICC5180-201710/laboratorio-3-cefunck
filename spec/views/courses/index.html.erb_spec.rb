require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :title => "Title",
        :code => "Code",
        :teacher => "Teacher",
        :quota => "Quota"
      ),
      Course.create!(
        :title => "Title",
        :code => "Code",
        :teacher => "Teacher",
        :quota => "Quota"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
    assert_select "tr>td", :text => "Quota".to_s, :count => 2
  end
end
