class Exception
  cattr_accessor :store

  def log
    @log ||= case @@store
                when :mongoid
                  Exception::MongoidStore.new #:exception => self
                when :activerecord
                  Exception::ActiveRecordStore.new #:exception => self
                end
  end

  def method_missing(method,*args,&block)
    log.send(method,*args,&block)
  end
end
