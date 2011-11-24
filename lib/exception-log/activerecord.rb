require 'activerecord/base'

class Exception::ActiveRecordStore < ActiveRecord::Base
  set_table_name 'exception_log'
end
