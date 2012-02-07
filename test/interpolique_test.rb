require 'test_helper'

class InterpoliqueTest < ActiveSupport::TestCase
  test "ground_truth" do
    assert_kind_of Module, Interpolique
  end

  test "basic_interpolation" do
    a = "foo"
    b = "bar"
    sample = "Testing the ^{a} and the ^{b}"
    desired = "Testing the b64d(\"#{Base64.encode64(a).strip}\") and the b64d(\"#{Base64.encode64(b).strip}\")"
    assert(ActiveRecord::Base.b(sample, binding) == desired)
  end
end
