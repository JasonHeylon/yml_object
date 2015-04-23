require "yml_object/version"
require 'yaml'

module YmlObject
  def self.say_hi
    'Hi'
  end
  def self.load(file_path)
    YmlObject::Object.new(YAML.load_file(file_path))
  end

  class Object
    def initialize(yml_hash)
      @my_object = yml_hash
    end

    def method_missing(method_name, *args, &block)
      if @my_object.include?(method_name.to_s)
        value = @my_object[method_name.to_s]
        if value.class == Hash
          value = YmlObject::Object.new value
        end
        return value
      end
      super(method_name, *args, &block)
    end
  end
end
