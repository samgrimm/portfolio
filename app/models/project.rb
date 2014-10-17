class Project < ActiveRecord::Base
	belongs_to :user
	acts_as_taggable
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates :description, presence: true, length: { maximum: 250 }
	validates :title, presence: true, length: { maximum: 100 }

	mount_uploader :image, ImageUploader
	mount_uploader :file, FileUploader

def download_url
  s3 = AWS::S3.new.buckets[ 'samantha-portfolio' ]
  file = s3.objects[self.filename]
  file.url_for( :read,
    expires_in: 60.minutes, 
    use_ssl: true,
    response_content_disposition: "attachment; filename='#{self.filename}'" ).to_s
end

def filename
	self.file_url.split("/").last(5).join("/")
end


  include PgSearch
  pg_search_scope :search, against: [:title, :description], using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      self
    end
  end
end
