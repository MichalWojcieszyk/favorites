require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :favorited }
  end

  describe 'database columns' do
    it { is_expected.to have_db_index :user_id }
    it { is_expected.to have_db_column :favorited_id }
    it { is_expected.to have_db_column :favorited_type }
  end
end