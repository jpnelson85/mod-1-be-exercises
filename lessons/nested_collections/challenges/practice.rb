def is_it_truthy(value)
  if value
    "#{value} is truthy!"
  else
    "#{value} is falsey!"
  end
end

puts is_it_truthy("false")

a	      b	     a AND b	    a OR b	        !a
true	true	     true	        true	        false
true	false	 	 	 false        true          false
false	true	 	 	 false        true          true
false	false	     false        false         true