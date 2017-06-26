class Skill < ApplicationRecord
  vailidates_presence_of :title, :percent_utilized
end
