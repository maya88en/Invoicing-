class Invoice < ActiveRecord::Base
    belongs_to :user
 
    has_many :line_items
    has_many :items, through: :line_items
 
    accepts_nested_attributes_for :line_items
 end 