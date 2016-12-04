require 'ostruct'

module SimpleForm::ActionViewExtensions::Builder
  def simple_fields_for_with_hash_support(*args, &block)
    if args[0] && !args[1]
      field = object.send(args[0])
      args << OpenStruct.new(field) if field.respond_to?(:has_key?)
    end
    simple_fields_for_without_hash_support(*args, &block)
  end
  alias simple_fields_for_without_hash_support simple_fields_for
  alias simple_fields_for simple_fields_for_with_hash_support
end