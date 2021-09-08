require 'sqlite3'
require 'colorize'

# Open a SQLite 3 database file
db = SQLite3::Database.new 'chinook.db'

def continue
  gets
  system ('clear')
end

puts "Récupérer tous les albums".green
db.execute 'SELECT Title FROM albums ;' do |row|
  print row
end
continue

puts "Récupérer tous les albums dont le titre contient 'Great' ".green
db.execute 'SELECT * FROM albums WHERE Title LIKE "%Great%";' do |row|
  p row
end
continue

puts "Donner le nombre total d'albums contenus dans la base (sans regarder les id bien sûr)".green
db.execute 'SELECT COUNT(*) FROM albums;' do |row|
  p row
end
continue

puts "Supprimer tous les albums dont le nom contient 'music'".green
db.execute 'DELETE FROM albums WHERE Title LIKE "%music%" ;'
continue

puts "Récupérer tous les albums écrits par 'AC/DC'".green
db.execute 'SELECT * FROM albums WHERE ArtistID in (SELECT artistid FROM artists WHERE Name = "AC/DC") ;' do |row|
  p row
end
continue

puts "Récupérer tous les titres des albums de 'AC/DC'".green
# db.execute 'SELECT albumId FROM albums WHERE ArtistID in (SELECT artistid FROM artists WHERE Name = "AC/DC") ;' do |row|
db.execute 'SELECT Name FROM Tracks WHERE AlbumId in (SELECT AlbumId FROM albums WHERE ArtistID in (SELECT artistid FROM artists WHERE Name = "AC/DC")) ;' do |row|
  p row
end
continue

puts "Récupérer la liste des titres de l'album 'Let There Be Rock'".green
#db.execute 'SELECT AlbumId FROM Albums WHERE Title = "Let There Be Rock" ;' do |row|
db.execute 'SELECT Name FROM tracks WHERE AlbumId in (SELECT AlbumId FROM Albums WHERE Title = "Let There Be Rock") ;' do |row|
  p row
end
continue

puts "Afficher le prix de cet album ainsi que sa durée totale".green
db.execute 'SELECT SUM(UnitPrice), SUM(Milliseconds) FROM tracks WHERE AlbumId in (SELECT AlbumId FROM Albums WHERE Title = "Let There Be Rock") ;' do |row|
  p row
end
continue

puts "Afficher le coût de l'intégralité de la discographie de 'Deep Purple'".green
##db.execute 'SELECT * FROM albums WHERE ArtistID in (SELECT artistid FROM artists WHERE Name = "Deep Purple") ;' do |row|
db.execute 'SELECT SUM(UnitPrice) FROM Tracks WHERE AlbumId in (SELECT albumID FROM albums WHERE ArtistID in (SELECT artistid FROM artists WHERE Name = "Deep Purple")) ;' do |row|
  p row
end
continue

###### Créer l'album de ton artiste favori en base, en renseignant correctement les trois tables albums, artists et tracks

