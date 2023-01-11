# replace any digit < 5 with "0" and any digit > 5 with "1"
# return the resulting string

def fake_bin(s)
    s.gsub(/[0-4]/, "0").gsub(/[5-9]/, "1")
end

def fake_bin_map(s)
    s.split('').map{|val| val.to_i < 5 ? '0' : '1'}.join('')
end