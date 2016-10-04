class Post < ApplicationRecord
  validates :title, :content, :presence => true
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
