UPDATE characters SET species = 'Martian' WHERE species = (SELECT species FROM characters WHERE characters.id =(SELECT MAX(id) FROM characters));
