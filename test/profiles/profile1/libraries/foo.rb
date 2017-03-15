class FooResource < Inspec.resource(1)
  name 'foo'
  desc 'this is the foo resource'
  example ''

  attr_reader :params
  def initialize
    @params = { 'key1' => 'value1' }
  end

  def exist?
    true
  end

  def method_missing(key)
    params[key.to_s]
  end

  def to_s
    "Foo stuff"
  end
end
