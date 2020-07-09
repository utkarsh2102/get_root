# frozen_string_literal: true

require "get_root"

RSpec.describe GetRoot do
  it "has a version number" do
    expect(GetRoot::VERSION).not_to be nil
  end

  it "shows the root directory correctly" do
    root_path = GetRoot.path
    relative_path = File.expand_path(".")
    expect(root_path).to eq(relative_path)
  end
end
