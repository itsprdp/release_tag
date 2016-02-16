require 'spec_helper'

describe ReleaseTag do
  it "should return the current version as v0.1.0" do
    version = ReleaseTag.current_tag
    expect(version).to eq("v0.1.0")
  end

  it "should return the correct next major release version" do
    version = ReleaseTag.next_tag("major")
    expect(version).to eq("v1.0.0")
  end

  it "should return the correct next minor release version" do
    version = ReleaseTag.next_tag("minor")
    expect(version).to eq("v0.2.0")
  end

  it "should return the correct next patch release version" do
    version = ReleaseTag.next_tag("patch")
    expect(version).to eq("v0.1.1")
  end

  it "should return the correct next patch release version if arguments are missing" do
    version = ReleaseTag.next_tag
    expect(version).to eq("v0.1.1")
  end

end
