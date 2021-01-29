class Schoolyear < ApplicationRecord


    enum status: {planning: 0,  registrations:1, progress:2, concluded: 3}

end
