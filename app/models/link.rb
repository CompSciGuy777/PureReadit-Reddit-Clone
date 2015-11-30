class Link < ActiveRecord::Base
    require 'uri'
    acts_as_votable
    belongs_to :user
    validates :title, presence: true
    validates_format_of :url,  with: URI::DEFAULT_PARSER.regexp[:ABS_URI]  , message: " - Must begin with http:// or https://"
    has_many :comments
end
