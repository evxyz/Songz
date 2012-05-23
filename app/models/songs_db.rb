class SongsDb < ActiveRecord::Base
  attr_accessible :artist, :comments, :title
end
