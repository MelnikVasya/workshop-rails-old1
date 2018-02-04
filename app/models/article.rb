class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :article_category, required: false

  validates :title, presence: true,
                    length: { minimum: 5 }
end
