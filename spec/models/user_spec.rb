require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1) }
  let(:friend) { User.new(id: 2) }
  let(:follower) { Follower.new(id: 1, user_id: 1, friend_id: 2, confirmed: true) }

  describe 'associations' do
    it { should have_many(:opinions) }
    it { should have_many(:followers) }
    it { should have_many(:inverse_followers).class_name('Follower') }
  end

  describe 'methods' do
    context 'friends' do
      it 'should return an array' do
        expect(user.friends).to be_an(Array)
      end
    end

    context 'friend?' do
      it 'should return a boolean' do
        expect(user.friend?(user)).to be_kind_of(FalseClass || TrueClass)
      end
    end
  end
end
