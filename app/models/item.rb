class Item < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  has_attached_file :image, styles: { medium: "150x350#", large: "250x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  translates :description, :material
   
end
