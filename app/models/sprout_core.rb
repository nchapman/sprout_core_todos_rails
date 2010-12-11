module SproutCore
  module ClassMethods
    def sprout_core_column_names
      @@sprout_core_column_names ||= column_names
    end
    
    def get_valid_attributes(attributes)
      attributes.reject { |k,v| k.to_s == "guid" || !sprout_core_column_names.include?(k) }
    end
    
    def create_with_valid_attributes(attributes)
      create(get_valid_attributes(attributes))
    end
  end
  
  def as_json(options = {})
    self.class.get_valid_attributes(attributes).merge({ :guid => "/tasks/#{self.id}" })
  end
  
  def update_valid_attributes(attributes)
    update_attributes(self.class.get_valid_attributes(attributes))
  end
  
  def self.included(base)
    base.extend(ClassMethods)
  end
end