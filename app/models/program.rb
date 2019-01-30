class Program < ApplicationRecord
    has_many :cycles, :class_name => "ProgramCycle"
end
