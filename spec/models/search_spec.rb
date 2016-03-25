require 'rails_helper'

RSpec.describe Search, type: :model do
  describe 'database columns' do
    it { is_expected.to have_db_column :keywords }
    it { is_expected.to have_db_column :country_code }
    it { is_expected.to have_db_column :min_people }
    it { is_expected.to have_db_column :max_people }
  end
end
