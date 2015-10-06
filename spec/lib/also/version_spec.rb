require "spec_helper"

RSpec.describe Also::VERSION do
  it "should be a string" do
    expect(Also::VERSION).to be_kind_of(String)
  end
end
