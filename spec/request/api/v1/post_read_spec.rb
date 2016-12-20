require 'rails_helper'

describe "#post to /reads", type: :request do
  it "creates a read" do

    post "/api/v1/reads", link: { title: "Great Link", url: "http://www.google.com"}

    expect(response).to be_success
    expect(Read.count).to eq(1)
  end
end
