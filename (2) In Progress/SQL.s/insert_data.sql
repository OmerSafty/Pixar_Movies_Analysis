copy pixar_films
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\pixar_films.csv'
delimiter ',' CSV HEADER;

copy box_office
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\box_office.csv'
delimiter ',' CSV HEADER;

copy public_response
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\public_response.csv'
delimiter ',' CSV HEADER;

copy genres
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\genres.csv'
delimiter ',' CSV HEADER;

copy pixar_people
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\pixar_people.csv'
delimiter ',' CSV HEADER;

copy academy
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\academy.csv'
delimiter ',' CSV HEADER;

copy pixar_data_dictionary
from 'C:\Users\Saftey\Desktop\Tasks\2\(2) In Progress\SQL.s\CSV_files\pixar_data_dictionary.csv'
delimiter ',' CSV HEADER;

-- didn't work so had to manualy import in postgres.

SELECT * FROM pixar_films

