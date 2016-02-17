require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) {Question.create!(title:"New question title", body:"New questions body", resolved:true)}
  let(:answer) {Answer.create!(body: 'Answer body', question: question)}

  describe "attirbutes" do
    it "responds to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
