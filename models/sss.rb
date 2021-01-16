


s = "big apple"

arr = s.split
res = ''
ds = ''
# s.gsub(/\b[^ aeiou]+/){|m| ds = s.delete_prefix(m); ds += m }
arr.map!{|sss| sss.gsub(/\b[^ aeiou]+/){|m| sss = sss.delete_prefix(m); sss += m }; sss}


a = arr.map{|w| w.match(/[aeiou]\Z/) ? w += 'way' : w += 'ay'}.join(' ')
s = "fdcvbnjmk nkmhhv vvgtvvv".delete(' ')
ss = s.delete(" ").upcase
h = {}
p ss.each_char{|c| h[c] = ss.count(c)}
p ss
p h.sort