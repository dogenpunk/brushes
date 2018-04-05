require 'spec_helper'

describe Brushes::WorkStorage do
  class TestStorage
    include Brushes::WorkStorage
  end

  subject { TestStorage.new }

  it 'can store a work' do
    proc { subject.store('a') }.must_raise Brushes::WorkStorage::NotImplementedError
  end

  it 'can find a work by id' do
    proc { subject.get 1 }.must_raise Brushes::WorkStorage::NotImplementedError
  end

  it 'can delete a work' do
    proc { subject.delete 1 }.must_raise Brushes::WorkStorage::NotImplementedError
  end
end
