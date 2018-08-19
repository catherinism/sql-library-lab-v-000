def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books
  WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  INNER JOIN subgenres
  ON subgenres.id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  INNER JOIN characters
  ON characters.series_id = series.id
  GROUP BY series.id
  HAVING characters.species = 'human'"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(character_books.character_id) FROM characters
  INNER JOIN character_books
  ON character_books.character_id = characters.id
  GROUP by characters.name
  ORDER BY COUNT(character_books.character_id) DESC"
end
