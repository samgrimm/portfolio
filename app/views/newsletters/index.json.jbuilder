json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :title, :content1, :content2, :content3, :image1, :image2, :image3
  json.url newsletter_url(newsletter, format: :json)
end