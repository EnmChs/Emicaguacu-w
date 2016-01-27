class GoogleAnalytic < ActiveRecord::Base
	belongs_to :setting
	has_many :properties
	accepts_nested_attributes_for :properties, reject_if: :all_blank, allow_destroy: true
end
