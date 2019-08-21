require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

  def initialize(info_hash = {})
    info_hash.each{|key, value| self.send("#{key}=", value)}
  end
end
