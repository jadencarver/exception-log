require 'mongoid'

class Exception::MongoidStore
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :name
  field :message

  def exception= exception
    @exception= exception
    self.attributes= {
      :name => exception.class.name,
      :message => exception.message,
      :backtrace => exception.backtrace,
    }
  end
end
