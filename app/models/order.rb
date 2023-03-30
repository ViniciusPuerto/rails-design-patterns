class Order < ApplicationRecord
  composed_of :total_value,
    class_name: 'Money',
    mapping: %w[total_value amount currency],
    converter: ->(value) { Money.new(value) },
    allow_nil: true
end
