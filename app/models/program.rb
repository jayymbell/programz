class Program < ApplicationRecord
    has_many :cycles, :class_name => "ProgramCycle"
    has_many :roles, :class_name => "ProgramRole"
end
