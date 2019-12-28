data remove storage arr_math:main v1
data remove storage arr_math:main v2
data remove storage arr_math:main out
data remove storage arr_math:main mult
data remove storage arr_math:main div

data merge storage arr_math:main {v1:{},v2:{},out:{num:[],pol:1,dec:0,base:10},temp:0}
data merge storage arr_math:in {var1:{num:[],pol:1,dec:0,base:10},var2:{num:[],pol:1,dec:0,base:10}}

scoreboard players reset * arr_math.main