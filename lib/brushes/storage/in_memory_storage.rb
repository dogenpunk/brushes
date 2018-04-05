module Brushes
  module Storage
    class InMemoryStorage
      include WorkStorage

      def initialize
        @works = {}
        @id = '1'
      end

      def store(work)
        @works[@id] = work
        @id
      end

      def get(id)
        @works[id]
      end
    end
  end
end
