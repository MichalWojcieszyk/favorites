class User < ActiveRecord::Base
  has_many :favorites
  has_many :favorite_companies, through: :favorites, source: :favorited, source_type: 'Company'
  has_many :favorite_people, through: :favorites, source: :favorited, source_type: 'Person'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
