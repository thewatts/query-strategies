class Approval < ActiveRecord::Base
  attr_accessible :approved_by, :comment_id
  belongs_to :comment
end
