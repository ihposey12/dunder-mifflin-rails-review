class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, presence: true
    validates :office, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :title, uniqueness: true
    validates :alias, uniqueness: true

    def f_and_l
        "#{self.first_name} #{self.last_name}"
    end
end
