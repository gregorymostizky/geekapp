class PaperFile < ActiveRecord::Base
  belongs_to :paper

  has_attached_file :file,
                    :storage => :s3,
                    :bucket => 'geekapp',
                    :s3_credentials => {
                        :access_key_id => ENV['S3_KEY'],
                        :secret_access_key => ENV['S3_SECRET']
                    }
end
