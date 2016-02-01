class Advisor < ActiveRecord::Base
  validates_presence_of :s_ID
  validates_presence_of :i_ID
  validates_numericality_of :s_ID
  validates_uniqueness_of :s_ID
  validates_length_of :s_ID, maximum: 7
end
