assert_equal ["1", "2", "3"], "1,2,3".split(",")
assert_equal ["", "", "1", "2", "3"], ",,1,2,3".split(",")
assert_equal ["1", "2", "3", "", ""], "1,2,3,,".split(",",-3)