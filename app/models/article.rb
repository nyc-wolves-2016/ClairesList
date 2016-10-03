class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  before_create :create_key

  validates :title,
            :description,
            :price,
              presence: true

  def create_key
    charset = Array('a'..'z') + Array(0..9)
    code = Array.new(6) { charset.sample }.join
    self.key = code
  end
end
