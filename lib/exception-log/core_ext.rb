class Exception
  cattr_writer :backend

  def logged
    @logged ||= case @@backend
                when :mongoid
                  ExceptionLog::Mongoid.new(self)
                when :activerecord
                  ExceptionLog::ActiveRecord.new(self)
                else
                  ExceptionLog::Logger.new(self)
                end
  end

  def save
    logged.save
  end

  def save!
    logged.save!
  end
end
