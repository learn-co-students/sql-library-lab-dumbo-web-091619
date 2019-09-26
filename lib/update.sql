UPDATE characters SET species = 'Martian' WHERE id IN 
  (SELECT max(id) FROM characters) ;