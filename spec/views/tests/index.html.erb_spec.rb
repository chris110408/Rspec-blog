require 'rails_helper'

RSpec.describe "tests/index", type: :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        :title => "Title"
      ),
      Test.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of tests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
