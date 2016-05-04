def format(f)
	f.gsub(/\"/, '')
end

def zhash(file_name = 'zbp13totals.txt')
	@file_name = file_name
	# zip codes
	$zcodes = {}
	# zip by state
	$zbstate = {}

	File.open(@file_name).each do |line|
	 	zip, city, state, zipinfo = line.chomp.split(',')
	 	zip = format(zip); city = format(city); state = format(state).lstrip

	 	$zcodes[zip] = 
	 		{"city" => city.split(/(\W)/).map(&:capitalize).join,
	 			"state" => state}

	 	if $zbstate.has_key?(state)
	    	$zbstate[state].push(zip)
	  	else
	   		$zbstate[state] = [zip]
	  	end
	end
end

# Run these lines only locally
if __FILE__ == $0
	zhash
	p "#{$zcodes['48198']['city']}, #{$zcodes['48198']['state']}"
	p "#{$zcodes['48104']['city']}, #{$zcodes['48104']['state']}"
	p
	p $zbstate['MI']
end