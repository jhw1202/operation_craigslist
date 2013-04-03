class Category < ActiveRecord::Base
  has_many :posts
  attr_accessible :name

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, :length => { minimum: 3}

end
