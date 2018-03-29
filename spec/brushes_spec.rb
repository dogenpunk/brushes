require "spec_helper"

describe Brushes do
  it 'has a version number' do
    ::Brushes::VERSION.wont_be_nil
  end

  describe Brushes::Gallery do
    it 'is empty by default' do
      Brushes::Gallery.new.must_be_empty
    end

    it 'can add an image' do
      gallery = Brushes::Gallery.new
      gallery.images << Brushes::Image.new

      gallery.images.wont_be_empty
    end

    it 'retains an image' do
      gallery = Brushes::Gallery.new
      image = Brushes::Image.new

      gallery.images << image

      gallery.images.first.must_be_same_as image
    end
  end
end
