$code = ""
Object.instance_eval do
  def const_missing(s); $code << s.to_s; 0; end
  remove_const(:GC)  # Holy moly!
end
at_exit do
  dict = { "AT"=>"00", "CG"=>"01", "GC"=>"10", "TA"=>"11" }
  eval([$code.gsub(/../) {|s| dict[s] }].pack("b*"))
end

def doublehelix(src)
  dict = { "00"=>["A","T"], "01"=>["C","G"], "10"=>["G","C"], "11"=>["T","A"] }
  format = [[1,0], [0,2], [0,3], [0,4], [1,4], [2,4], [3,3], [4,2], [5,0]]
  format += format.reverse
  %(require "doublehelix"\n\n) + src.unpack("b*").first.gsub(/../) do |s|
    format << (offset, dist = format.shift)
    " " * offset + dict[s] * ("-" * dist) + "\n"
  end
end

def english(helix)
    result = helix.gsub(/[ -]/, '').gsub(/(AT)|(TA)|(CG)|(GC)/, 'AT'=>"00", 'TA'=>"11", 'CG'=>"01", 'GC'=>"10").gsub(/\n/, '')
    result.delete! "require\"doublehelix\""
    result = [result]
    result.pack("b*")

end
