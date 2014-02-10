class Product < ActiveRecord::Base
  attr_accessible :name, :preview, :file
  mount_uploader :preview, ProductFilePreviewUploader
  mount_uploader :file, ProductFileUploader
end
