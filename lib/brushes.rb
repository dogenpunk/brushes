require "brushes/version"

module Brushes
  class Image
  end

  class Gallery
    extend Forwardable

    def_delegators :@images, :empty?, :<<, :first, :count

    def initialize
      @images = []
    end
  end
end
