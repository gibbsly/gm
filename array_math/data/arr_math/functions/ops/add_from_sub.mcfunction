#adding arrays together
function arr_math:ops/add_cur

#adding any carried over numbers if available
execute unless score temp= arr_math.main matches 0 run function arr_math:ops/write_carry_over