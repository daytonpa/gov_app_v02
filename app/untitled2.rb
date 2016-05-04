def read
	File.open('zbp13totals.txt').each do |line|
		@array = line.downcase.tr('"', '').chomp.split(',')
		@array[2] = @array[2].lstrip

		#      _zip_code_ = ___city___,___state___
		$zhash[@array[0]] = [@array[1], @array[2]]
	end
end
$zhash = {}
read

if __FILE__ == $0
	p $zhash['48198']
	p $zhash['94103']
	p $zhash['48104']
end