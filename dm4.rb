nom_fichier = ARGV[0]
if File.exists?(nom_fichier) == true
	file = File.open(nom_fichier)
else
	puts "erreur"
	exit
end

array = []

file.each {|line| array << line.gsub!("\n", "")}
array.each do |line| 
	p line if line.length % 2 == 0
end