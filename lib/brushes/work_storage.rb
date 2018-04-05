module Brushes
  module WorkStorage
    class NotImplementedError < StandardError; end

    def store(work)
      raise NotImplementedError, '#store method must be implemented by inheriting class'
    end

    def get(id)
      raise NotImplementedError, '#get method must be implemented by inheriting class'
    end

    def delete(id)
      raise NotImplementedError, '#delete method must be implemented by inheriting class'
    end
  end
end
