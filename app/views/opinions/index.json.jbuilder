# frozen_string_literal: true

json.array! @opinions, partial: 'opinions/opinion', as: :opinion
