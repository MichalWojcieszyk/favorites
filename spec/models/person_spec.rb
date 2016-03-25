require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :company }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_index :company_id }
  end
end