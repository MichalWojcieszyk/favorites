require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :people }
    it { is_expected.to have_many :company_comments }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :country_code }
    it { is_expected.to have_db_column :slug }
    it { is_expected.to have_db_column :people_count }
  end
end
