class Article < ApplicationRecord
  include Visible
  # permite que un articulo tenga muchos comentarios
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
