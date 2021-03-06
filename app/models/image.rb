class Image < ApplicationRecord
  belongs_to :user
  belongs_to :project

  def result_url
    "https://cache.imageutil.io#{self.cdn_path.gsub("result_storage/","")}"
  end
end
