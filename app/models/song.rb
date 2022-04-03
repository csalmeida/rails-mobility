class Song < ApplicationRecord
  attr_accessor :language
  extend Mobility

  translates :title, type: :string, locale_accessors: [:en, :pt]
  translates :description, type: :text, locale_accessors: [:en, :pt]
  translates :content, backend: :action_text, locale_accessors: [:en, :pt]
end
