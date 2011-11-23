require 'mongoid'

class ExceptionLog::Mongoid
  include Mongoid::Document
  include Mongoid::Timestamps::CreatedAt
end
