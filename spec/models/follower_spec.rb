# frozen_string_literal: true

require 'rails_helper.rb'

RSpec.describe Follower, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:follower).class_name('User') }
  end
end
