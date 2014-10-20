class Task < ActiveRecord::Base
  attr_accessible :band_id, :desc, :due, :id, :status, :title
    belongs_to :band 
end
