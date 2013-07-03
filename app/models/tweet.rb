class Tweet < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
  
  belongs_to :user

end
