class Post < ActiveRecord::Base
  include SecureRandom

  belongs_to :category
  attr_accessible :content, :title, :category_id, :secret_url

  validates :title, :presence => true
  validates :content, :presence => true
  validates :title, :length => { minimum: 4}
  validates :content, :length => {minimum: 5}
  validates :category_id, :presence => true
  before_save :create_secret_url

  def create_secret_url
    self.secret_url = SecureRandom.hex(10)
  end

end
