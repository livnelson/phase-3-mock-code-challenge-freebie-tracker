require "pry"

class Freebie < ActiveRecord::Base
    belongs_to :devs
    belongs_to :companies

    def print_details
        
        binding.pry
    end
end
