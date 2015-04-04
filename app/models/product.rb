class Product < ActiveRecord::Base

  mount_uploader :banner, BannerUploader
  
  belongs_to :carpenter
  
end
