require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe '#create' do
    it "nameがない場合は登録できないこと" do
     user = User.new(name: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", )
     user.valid?
     expect(user.errors[:name]).to include("を入力してください")
    end
  end

end
