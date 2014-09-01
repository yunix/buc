class MenuItem < ActiveRecord::Base
  belongs_to :site
  #validates_presence_of :text
  #validates_presence_of :url
end
