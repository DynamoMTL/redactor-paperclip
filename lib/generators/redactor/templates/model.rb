class RedactorAsset < ActiveRecord::Base
	has_attached_file :asset, styles: { original: "800x800>", thumb: "118x100>" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
