require 'activerecord/base'

class ExceptionLog::ActiveRecord < ActiveRecord::Base
  set_table_name 'exception_log'
end
