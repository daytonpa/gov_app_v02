def read
	@zip_arr = []

	$state_list.each do |st|
		@st = st
		File.open('zbp13totals.txt').each do |line|

			@array = line.downcase.tr('"', '').split(',')
			@array[2] = @array[2].lstrip

			@zip = @array[0]

			case @st
			when @array[2] = @st
				@zip_arr << @zip
			else
			end
		end
		$zip_hash[st] = @zip_arr.to_s
	end
end

$state_list = ['al', 'ak', 'az', 'ar', 'ca', 'co', 'ct', 'de', 'fl', 
			   'ga', 'hi', 'id', 'il', 'ia', 'ks', 'ky', 'la', 'me', 
			   'md', 'ma', 'mn', 'ms', 'mo', 'mt', 'ne', 'nv', 'nh', 
			   'nj', 'nm', 'ny', 'nc', 'oh', 'ok', 'or', 'pa', 'ri', 
			   'sc', 'tn', 'tx', 'ut', 'vt', 'va', 'wa', 'wv', 'wi', 
			   'wy']
$zip_hash = {}

# zip codes by state
read
p $zip_hash['48198']
p $zip_hash['mi']
