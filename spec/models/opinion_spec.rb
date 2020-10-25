# frozen_string_literal: true

require 'rails_helper.rb'

RSpec.describe Opinion, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
