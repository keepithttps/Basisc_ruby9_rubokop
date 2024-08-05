module Manufacturer
  attr_accessor :manufacturer

  def made_in_company(name_firm)
    self.manufacturer = name_firm
  end

  def company
    manufacturer
  end
end

module Counter
  module ClassMethods
    attr_writer :instances

    def instances
      @instances || 0
    end
  end

  module InstanceMethods
    def register_instance
      self.class.instances += 1
    end
  end
end
