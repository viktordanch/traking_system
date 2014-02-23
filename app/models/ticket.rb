class Ticket < ActiveRecord::Base

  belongs_to :author, :class_name => "User",foreign_key: :author_id
  belongs_to :programmer, :class_name => "User",foreign_key: :programer_id
end
