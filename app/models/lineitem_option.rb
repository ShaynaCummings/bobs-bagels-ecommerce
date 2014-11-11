class LineitemOption < ActiveRecord::Base
  belongs_to :lineitem
  belongs_to :option
end
