a = "Miles O'Brien"
b = "Barack Obama"

assert_equal ((a =~ /[ ]\w'/) ? "Irish" : "Not Irish"), "Irish"
assert_equal ((b =~ /[ ]\w'/) ? "Irish" : "Not Irish"), "Not Irish"