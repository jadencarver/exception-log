require 'activerecord/base'

class Exception::ActiveRecordLog < ActiveRecord::Base
  set_table_name 'exception_log'


  def class
    name.constantize
  end
end
