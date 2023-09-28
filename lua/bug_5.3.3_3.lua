-- Lua can generate wrong code in functions with too many constants.

-- begin test case --
-- 0
a = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9
b = b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9
c = c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8 + c9
d = d1 + d2 + d3 + d4 + d5 + d6 + d7 + d8 + d9
e = e1 + e2 + e3 + e4 + e5 + e6 + e7 + e8 + e9
-- 50
f = f1 + f2 + f3 + f4 + f5 + f6 + f7 + f8 + f9
g = g1 + g2 + g3 + g4 + g5 + g6 + g7 + g8 + g9
h = h1 + h2 + h3 + h4 + h5 + h6 + h7 + h8 + h9
i = i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9
j = j1 + j2 + j3 + j4 + j5 + j6 + j7 + j8 + j9
-- 100
k = k1 + k2 + k3 + k4 + k5 + k6 + k7 + k8 + k9
l = l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9
m = m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9
n = n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9
o = o1 + o2 + o3 + o4 + o5 + o6 + o7 + o8 + o9
-- 150
p = p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9
q = q1 + q2 + q3 + q4 + q5 + q6 + q7 + q8 + q9
r = r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8 + r9
s = s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9
t = t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9
-- 200
u = u1 + u2 + u3 + u4 + u5 + u6 + u7 + u8 + u9
v = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9
w = w1 + w2 + w3 + w4 + w5 + w6 + w7 + w8 + w9
x = x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9
y = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8 + y9
-- 250
z = z1 + z2 + z3 + z4 -- can add many more vars here
-- 255
A( 1+B )
-- 258 or 257 constants/strings if you do/don't count the 1
-- end test case --
