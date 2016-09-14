class Item < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "150x350#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
