require "brushes/version"

module Brushes
  class Image
  end

  class Gallery
    def initialize
      @images = []
    end

    def images
      @images
    end

    def empty?
      true
    end
  end
end
