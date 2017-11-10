class Product < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 600 }
  validates :link, presence: true, length: { maximum: 100 }
  has_attached_file :image, styles: { thumb: ['60x60', :jpg], tooltip: ['300x300', :png], big: ['225x225', :jpg] }
  validates :image, attachment_presence: true
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  
end
