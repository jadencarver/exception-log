require 'mongoid'

class Exception::MongoidLog
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :name, type: String
  field :message, type: String
  field :backtrace, type: String

  def exception= exception
    @exception= exception
    self.attributes= {
      :name => exception.class.name,
      :message => exception.message,
      :backtrace => exception.backtrace,
    }
  end

  def class
    name.constantize
  end
end
