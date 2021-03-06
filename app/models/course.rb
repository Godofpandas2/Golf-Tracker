class Course < ApplicationRecord
    belongs_to :type
    belongs_to :user
    scope :played, -> { where(played: true) }
    accepts_nested_attributes_for :type, :reject_if => :all_blank, :allow_destroy => true
    validates :name, presence: :true
    validates :type, presence: :true
end
