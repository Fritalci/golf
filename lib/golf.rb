##golf program
require 'csv'

class HoleLayout
  attr_accessor :par_per_hole
  def initialize
    @par_per_hole = []
  end
  def import_csv(csv)
    array_of_strings = (CSV.parse(File.open(File.join(File.dirname(__FILE__), csv)))).flatten
    array_of_strings.each do |each_string|
      @par_per_hole << each_string.to_i
    end
  end
end