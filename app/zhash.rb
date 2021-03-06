def read
	# Create empty hash for zip keys and city/state values
	$zhash = {}

	# Read file and put each line into loop
	File.open('zbp13totals.txt').each do |line|

		# Format line String and convert to an Array
		@array = line.downcase.tr('"', '').chomp.split(',')
		@array[2] = @array[2].lstrip

		#      _zip_code_ = ___city___,___state___
		$zhash[@array[0]] = [@array[1], @array[2]]
	end
end

# Run these lines only locally
if __FILE__ == $0
	read
	p $zhash['48198']
	p $zhash['94103']
	p $zhash['48104']
end