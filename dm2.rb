class String
  def is_integer?
    self.to_i.to_s == self
  end
end

nom_fichier = ARGV[0]
if File.exists?(nom_fichier) == true
	file = File.open(nom_fichier)
else
	puts "erreur"
	exit
end
lign_set = ARGV[1]
array = []
if lign_set.is_integer?
	i = 0
	lign_set = lign_set.to_i
	file.each {|line| array << line.gsub!("\n", "")}
	array.each do |line|
		i += 1 
		p line if i % lign_set== 0
	end 
else
	puts "erreur"
	exit
end

		