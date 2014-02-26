class Professor < User
    belongs_to :institution
    has_many :courses
end
