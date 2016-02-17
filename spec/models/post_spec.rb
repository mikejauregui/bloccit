require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) {Post.create!(title: "New post title", body: "New post body")}

  describe "attributes" do

    it "responds to title" do
      expect(post).to respond_to(:title)
    end

    it "responds to body" do
      expect(post).to respond_to(:body)
    end
  end
end
