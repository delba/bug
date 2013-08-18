require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  setup do
    @one = items(:one).tap do |item|
      item.update(name: 'new name')
    end
  end

  test "before_update_changed includes 'name'" do
    assert_includes @one.before_update_changed, 'name'
  end

  test "before_update_changed doesn't include updated_at" do
    refute_includes @one.before_update_changed, 'updated_at'
  end
end
