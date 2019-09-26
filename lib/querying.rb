def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
    SELECT books.title, books.year 
    FROM books
    WHERE books.series_id = 1
    ORDER BY books.year
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
    SELECT characters.name, characters.motto
    FROM characters 
    ORDER BY length(characters.motto) DESC
    LIMIT 1
  SQL
end


def select_value_and_count_of_most_prolific_species
  <<-SQL
    SELECT species, COUNT(species)
    FROM characters
    GROUP BY species
    ORDER BY COUNT(species) DESC
    LIMIT 1
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name
    FROM authors
    JOIN series
    ON authors.id = series.author_id
    JOIN subgenres
    ON series.subgenre_id = subgenres.id
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
    SELECT series.title
    FROM series
    JOIN characters  
    ON characters.author_id = series.author_id
    GROUP BY characters.species
    ORDER BY characters.species DESC
    LIMIT 1
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT characters.name, COUNT(character_books.book_id)
    FROM characters
    JOIN character_books
    ON characters.id = character_books.character_id
    GROUP BY characters.id
    ORDER BY COUNT(character_books.book_id) DESC, characters.name ASC
  SQL
end
