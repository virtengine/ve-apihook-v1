require File.expand_path("#{File.dirname(__FILE__)}/test_helper")

class TestApps < MiniTest::Unit::TestCase


 def test_get_assembly
   response = megams.get_one_assembly("ASM1133747829995601920")
   assert_equal(200, response.status)
 end
end
