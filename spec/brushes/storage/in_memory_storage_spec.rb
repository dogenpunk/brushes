require 'spec_helper'

describe Brushes::Storage::InMemoryStorage do
  let(:storage) { Brushes::Storage::InMemoryStorage.new }

  it 'returns an id when storing a work' do
    work = {}

    result = storage.store(work)

    result.wont_be_same_as work
    result.wont_be_nil
  end

  it 'retrieves a work by id' do
    work = {}
    id = storage.store(work)

    storage.get(id).must_be_same_as work
  end
end
