# open file + envoyer en tableau chaque ligne du fichier
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
	puts line 
	puts "\n"
end

=begin


ligne nb paire de char

nb pair de a / ligne

same voyelle

ligne pair de majuscule.
=end