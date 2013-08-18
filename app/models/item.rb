class Item < ActiveRecord::Base
  attr_reader :before_update_changed

  before_update do
    @before_update_changed = changed
  end
end
