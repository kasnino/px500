require "test_helper"

describe View do
  let(:view) { View.new }

  it "must be valid" do
    value(view).must_be :valid?
  end
end
