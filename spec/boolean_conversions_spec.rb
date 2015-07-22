require 'spec_helper'

describe BooleanConversions do
  it 'has a version number' do
    expect(BooleanConversions::VERSION).not_to be nil
  end

  context 'strings' do
    it 'adds to_bool method to String class' do
      expect('foo').to respond_to(:to_bool)
    end

    it 'should evaluate "true" as boolean true' do
      expect('true'.to_bool).to eq true
    end

    it 'should evaluate "false" as boolean false' do
      expect('false'.to_bool).to eq false
    end

    it 'should throw and error when called on non-boolean string' do
      expect{'foo'.to_bool}.to raise_error ArgumentError
    end
  end
end
