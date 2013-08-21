 #Solution to 'Related keys of Hash' on rubeque.com
# by alno
# http://rubeque.com/problems/related-keys-of-hash

class Hash
  def keys_of(*args)
    select{|k,v| args.include? v}.keys
  end
end

assert_equal [:a], {a: 1, b: 2, c: 3}.keys_of(1)
assert_equal [:a, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1)
assert_equal [:a, :b, :d], {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)
