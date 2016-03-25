require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :favorites }
    it { is_expected.to have_many :favorite_companies }
    it { is_expected.to have_many :favorite_people }
    it { is_expected.to have_many :company_comments }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :provider }
    it { is_expected.to have_db_column :uid }
    it { is_expected.to have_db_column :admin }
  end
end
