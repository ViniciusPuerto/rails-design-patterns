class Order < ApplicationRecord
  composed_of :total_value,
              class_name: 'Money',
              mapping: %w[total_value amount currency],
              converter: ->(value) { Money.new(value.amount, value.currency) },
              allow_nil: true

  attribute :shipping_address, AddressType.new
end
