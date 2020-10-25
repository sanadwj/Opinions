# frozen_string_literal: true

json.array! @followers, partial: 'followers/follower', as: :follower
