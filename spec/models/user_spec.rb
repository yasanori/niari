require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe '#create' do
    it "nameがない場合は登録できないこと" do
     user = build(:user, name: "")
     user.valid?
     expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailがない場合は登録ができないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

  end

end
