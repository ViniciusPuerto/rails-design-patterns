ActiveSupport.on_load(:active_record) do
    ActiveRecord::Type.register :address_type, AddressType
end