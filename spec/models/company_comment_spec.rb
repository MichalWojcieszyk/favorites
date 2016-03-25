require 'rails_helper'

RSpec.describe CompanyComment, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :company }
    it { is_expected.to belong_to :user }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_index :user_id }
    it { is_expected.to have_db_index :company_id }
  end
end
