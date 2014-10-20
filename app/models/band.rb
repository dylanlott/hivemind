class Band < ActiveRecord::Base
  attr_accessible :band_id, :location, :name\
        has_many :comments
end
