#if v1 > v2

execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:1},var2:{pol:1}} run data modify storage arr_math:main out.pol set value 1
execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:1},var2:{pol:1}} run function arr_math:ops/sub_cur


execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value 1
execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:1},var2:{pol:-1}} run function arr_math:ops/add_from_sub


execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value -1
execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run function arr_math:ops/sub_cur


execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:-1},var2:{pol:1}} run data modify storage arr_math:main out.pol set value -1
execute if score gv= arr_math.main matches 1 if data storage arr_math:in {var1:{pol:-1},var2:{pol:1}} run function arr_math:ops/add_from_sub

#if v1 < v2

execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:1},var2:{pol:1}} run data modify storage arr_math:main out.pol set value -1
execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:1},var2:{pol:1}} run function arr_math:ops/sub_cur


execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value 1
execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:1},var2:{pol:-1}} run function arr_math:ops/add_from_sub


execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value 1
execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run function arr_math:ops/sub_cur


execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:-1},var2:{pol:1}} run data modify storage arr_math:main out.pol set value -1
execute if score gv= arr_math.main matches 2 if data storage arr_math:in {var1:{pol:-1},var2:{pol:1}} run function arr_math:ops/add_from_sub