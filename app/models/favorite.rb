class Favorite < ActiveRecord::Base
  belongs_to :user, counter_cache: true
  belongs_to :favorited, polymorphic: true

  validates_uniqueness_of :favorited_id, scope: :favorited_type
end
