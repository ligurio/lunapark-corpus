-- the following code should raise an error
for pos, cp in utf8.codes('in\xbfvalid') do
  print(pos, cp)
end
