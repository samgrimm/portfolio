class Newsletter < ActiveRecord::Base
mount_uploader :image1, Image1Uploader
mount_uploader :image2, Image2Uploader
mount_uploader :image3, Image3Uploader




end

