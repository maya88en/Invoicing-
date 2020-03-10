class Item < ActiveRecord::Base
    belongs_to :company
  
    has_many :line_items
    has_many :invoices, through: :line_items
  end