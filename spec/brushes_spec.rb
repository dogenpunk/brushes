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
      gallery << Brushes::Image.new

      gallery.wont_be_empty
    end

    it 'retains an image' do
      gallery = Brushes::Gallery.new
      image = Brushes::Image.new

      gallery << image

      gallery.first.must_be_same_as image
    end

    it 'is not empty after adding an image' do
      gallery = Brushes::Gallery.new

      gallery << Brushes::Image.new

      gallery.wont_be_empty
    end
  end
end
