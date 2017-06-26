class Portfolio < ApplicationRecord
  vailidates_presence_of :title, :Body, :main_image, :thumb_image
end
