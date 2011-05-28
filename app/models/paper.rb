class Paper < ActiveRecord::Base
  belongs_to :user

  has_many :sources, :class_name => 'PaperFile'
end
