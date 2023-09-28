-- Wrong code generated for a 'goto' followed by a label inside an 'if'.

-- should print 32323232..., but prints only '3'
if true then
  goto LBL
  ::loop::
  print(2)
  ::LBL::
  print(3)
  goto loop
end
