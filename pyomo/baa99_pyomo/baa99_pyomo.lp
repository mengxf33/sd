\* Source Pyomo model name=Scenario1 *\

min 
_USER_COST_OBJECTIVE_Scenario1:
+4 x1
+2 x2
+10 u1
+10 u2
+0.20000000000000001 v1
+0.20000000000000001 v2
-8 w11
-4 w12
-4 w22

s.t.

c_e_d1_:
+1 u1
+1 w11
= 100

c_e_d2_:
+1 u2
+1 w12
+1 w22
= 100

c_e_s1_:
-1 x1
+1 v1
+1 w11
+1 w12
= 0

c_e_s2_:
-1 x2
+1 v2
+1 w22
= 0

c_e_ONE_VAR_CONSTANT: 
ONE_VAR_CONSTANT = 1.0

bounds 
   0 <= x1 <= 217
   0 <= x2 <= 217
   0 <= v1 <= +inf
   0 <= v2 <= +inf
   0 <= u1 <= +inf
   0 <= u2 <= +inf
   0 <= w11 <= +inf
   0 <= w12 <= +inf
   0 <= w22 <= +inf
end 
