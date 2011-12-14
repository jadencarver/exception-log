class Exception
  cattr_accessor :store

  def log
    @log ||= case @@store
                when :mongoid
                  Exception::MongoidLog.new :exception => self
                when :activerecord
                  Exception::ActiveRecordLog.new :exception => self
                end
  end

  def save
    log.save
  end

  def save!
    log.save!
  end
end
