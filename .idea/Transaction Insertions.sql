-- June
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Johnathan Kovacevic'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2024-06-30', 'Trade'),
((SELECT person_id FROM Person WHERE name='Lukas Svejkovsky'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), '2024-06-30', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jake Guentzel'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), '2024-06-30', 'Trade'),
((SELECT person_id FROM Person WHERE name='Chris Tanev'), (SELECT team_id FROM Teams WHERE team_name='Dallas Stars'), (SELECT team_id FROM Teams WHERE team_name='Toronto Maple Leafs'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Alexander Holtz'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Vegas Golden Knights'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Akira Schmid'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Vegas Golden Knights'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Paul Cotter'), (SELECT team_id FROM Teams WHERE team_name='Vegas Golden Knights'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Kevin Hayes'), (SELECT team_id FROM Teams WHERE team_name='St. Louis Blues'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Tanner Jeannot'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), (SELECT team_id FROM Teams WHERE team_name='Los Angeles Kings'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='John Marino'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Utah Hockey Club'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Mikhail Sergachev'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), (SELECT team_id FROM Teams WHERE team_name='Utah Hockey Club'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Beck Malenstyn'), (SELECT team_id FROM Teams WHERE team_name='Washington Capitals'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), '2024-06-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Andrew Mangiapane'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), (SELECT team_id FROM Teams WHERE team_name='Washington Capitals'), '2024-06-27', 'Trade'),
((SELECT person_id FROM Person WHERE name='Carl Grundstrom'), (SELECT team_id FROM Teams WHERE team_name='Los Angeles Kings'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2024-06-27', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jake Walman'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2024-06-25', 'Trade'),
((SELECT person_id FROM Person WHERE name='Andrew Gibson'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), (SELECT team_id FROM Teams WHERE team_name='Nashville Predators'), '2024-06-25', 'Trade'),
((SELECT person_id FROM Person WHERE name='Linus Ullmark'), (SELECT team_id FROM Teams WHERE team_name='Boston Bruins'), (SELECT team_id FROM Teams WHERE team_name='Ottawa Senators'), '2024-06-24', 'Trade'),
((SELECT person_id FROM Person WHERE name='Egor Afanasyev'), (SELECT team_id FROM Teams WHERE team_name='Nashville Predators'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2024-06-23', 'Trade'),
((SELECT person_id FROM Person WHERE name='Adam Beckman'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2024-06-21', 'Trade'),
((SELECT person_id FROM Person WHERE name='Pierre-Luc Dubois'), (SELECT team_id FROM Teams WHERE team_name='Los Angeles Kings'), (SELECT team_id FROM Teams WHERE team_name='Washington Capitals'), '2024-06-19', 'Trade'),
((SELECT person_id FROM Person WHERE name='Ty Dellandrea'), (SELECT team_id FROM Teams WHERE team_name='Dallas Stars'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2024-06-19', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jacob Markstrom'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2024-06-19', 'Trade');

-- May
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Ryan McDonagh'), (SELECT team_id FROM Teams WHERE team_name='Nashville Predators'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), '2024-05-21', 'Trade');

-- March
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Nathan Legare'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2024-03-11', 'Trade'),
((SELECT person_id FROM Person WHERE name='Egor Zamula'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Colin Miller'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Winnipeg Jets'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Vitek Vanecek'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Tomas Hertl'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Vegas Golden Knights'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Matt Dumba'), (SELECT team_id FROM Teams WHERE team_name='Arizona Coyotes'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jason Zucker'), (SELECT team_id FROM Teams WHERE team_name='Arizona Coyotes'), (SELECT team_id FROM Teams WHERE team_name='Nashville Predators'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jamie Drysdale'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), (SELECT team_id FROM Teams WHERE team_name='Anaheim Ducks'), '2024-03-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jake Guentzel'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Troy Stecher'), (SELECT team_id FROM Teams WHERE team_name='Arizona Coyotes'), (SELECT team_id FROM Teams WHERE team_name='Edmonton Oilers'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Brandon Duhaime'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), (SELECT team_id FROM Teams WHERE team_name='Colorado Avalanche'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Anthony Beauvillier'), (SELECT team_id FROM Teams WHERE team_name='Chicago Blackhawks'), (SELECT team_id FROM Teams WHERE team_name='Nashville Predators'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Will Butcher'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Kyle Okposo'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), (SELECT team_id FROM Teams WHERE team_name='Florida Panthers'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Nikita Okhotiuk'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Erik Johnson'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Chad Ruhwedel'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='New York Rangers'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Andrew Peeke'), (SELECT team_id FROM Teams WHERE team_name='Columbus Blue Jackets'), (SELECT team_id FROM Teams WHERE team_name='Boston Bruins'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Tyler Toffoli'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Winnipeg Jets'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Anthony Duclair'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Evgeny Kuznetsov'), (SELECT team_id FROM Teams WHERE team_name='Washington Capitals'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Connor Dewar'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), (SELECT team_id FROM Teams WHERE team_name='Toronto Maple Leafs'), '2024-03-07', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jack Roslovic'), (SELECT team_id FROM Teams WHERE team_name='Columbus Blue Jackets'), (SELECT team_id FROM Teams WHERE team_name='New York Rangers'), '2024-03-07', 'Trade');

-- February
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Ilya Lyubushkin'), (SELECT team_id FROM Teams WHERE team_name='Anaheim Ducks'), (SELECT team_id FROM Teams WHERE team_name='Toronto Maple Leafs'), '2024-02-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Kirill Slepets'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), (SELECT team_id FROM Teams WHERE team_name='Toronto Maple Leafs'), '2024-02-29', 'Trade'),
((SELECT person_id FROM Person WHERE name='Chris Tanev'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Dallas Stars'), '2024-02-28', 'Trade'),
((SELECT person_id FROM Person WHERE name='Cole Brady'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='Dallas Stars'), '2024-02-28', 'Trade'),
((SELECT person_id FROM Person WHERE name='Emil Bemstrom'), (SELECT team_id FROM Teams WHERE team_name='Columbus Blue Jackets'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), '2024-02-22', 'Trade'),
((SELECT person_id FROM Person WHERE name='Alex Nylander'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Columbus Blue Jackets'), '2024-02-22', 'Trade'),
((SELECT person_id FROM Person WHERE name='Sean Monahan'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='Winnipeg Jets'), '2024-02-02', 'Trade');

-- January
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Elias Lindholm'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), '2024-01-31', 'Trade'),
((SELECT person_id FROM Person WHERE name='Andrei Kuzmenko'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), '2024-01-31', 'Trade'),
((SELECT person_id FROM Person WHERE name='Will Butcher'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), '2024-01-25', 'Trade'),
((SELECT person_id FROM Person WHERE name='Maxim Cajkovic'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), '2024-01-25', 'Trade'),
((SELECT person_id FROM Person WHERE name='Filip Cederqvist'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), '2024-01-11', 'Trade'),
((SELECT person_id FROM Person WHERE name='Cutter Gauthier'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), (SELECT team_id FROM Teams WHERE team_name='Anaheim Ducks'), '2024-01-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jamie Drysdale'), (SELECT team_id FROM Teams WHERE team_name='Anaheim Ducks'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), '2024-01-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Rem Pitlick'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Chicago Blackhawks'), '2024-01-06', 'Trade');

-- December
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Tomas Tatar'), (SELECT team_id FROM Teams WHERE team_name='Colorado Avalanche'), (SELECT team_id FROM Teams WHERE team_name='Seattle Kraken'), '2023-12-15', 'Trade'),
((SELECT person_id FROM Person WHERE name='Nick Cicek'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), '2023-12-15', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jack Studnicka'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2023-12-15', 'Trade'),
((SELECT person_id FROM Person WHERE name='Robert Bortuzzo'), (SELECT team_id FROM Teams WHERE team_name='St. Louis Blues'), (SELECT team_id FROM Teams WHERE team_name='New York Islanders'), '2023-12-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Eric Robinson'), (SELECT team_id FROM Teams WHERE team_name='Columbus Blue Jackets'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), '2023-12-06', 'Trade');

-- November
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Nikita Zadorov'), (SELECT team_id FROM Teams WHERE team_name='Calgary Flames'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), '2023-11-30', 'Trade'),
((SELECT person_id FROM Person WHERE name='Anthony Beauvillier'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), (SELECT team_id FROM Teams WHERE team_name='Chicago Blackhawks'), '2023-11-28', 'Trade'),
((SELECT person_id FROM Person WHERE name='Arnaud Durandeau'), (SELECT team_id FROM Teams WHERE team_name='New York Islanders'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2023-11-26', 'Trade'),
((SELECT person_id FROM Person WHERE name='Tyce Thompson'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), (SELECT team_id FROM Teams WHERE team_name='New York Islanders'), '2023-11-26', 'Trade'),
((SELECT person_id FROM Person WHERE name='Zach Bogosian'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), '2023-11-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Calen Addison'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2023-11-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Adam Raska'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), '2023-11-08', 'Trade');

-- October
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Callahan Burke'), (SELECT team_id FROM Teams WHERE team_name='Colorado Avalanche'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), '2023-10-10', 'Trade'),
((SELECT person_id FROM Person WHERE name='Caleb Jones'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), (SELECT team_id FROM Teams WHERE team_name='Colorado Avalanche'), '2023-10-10', 'Trade'),
((SELECT person_id FROM Person WHERE name='Sam Lafferty'), (SELECT team_id FROM Teams WHERE team_name='Toronto Maple Leafs'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), '2023-10-08', 'Trade');

-- September
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Casey DeSmith'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), '2023-09-19', 'Trade'),
((SELECT person_id FROM Person WHERE name='Tanner Pearson'), (SELECT team_id FROM Teams WHERE team_name='Vancouver Canucks'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), '2023-09-19', 'Trade');

-- August
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Ilya Lyubushkin'), (SELECT team_id FROM Teams WHERE team_name='Buffalo Sabres'), (SELECT team_id FROM Teams WHERE team_name='Anaheim Ducks'), '2023-08-18', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jeff Petry'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), '2023-08-15', 'Trade'),
((SELECT person_id FROM Person WHERE name='Gustav Lindstrom'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), '2023-08-15', 'Trade'),
((SELECT person_id FROM Person WHERE name='David Kase'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), '2023-08-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Massimo Rizzo'), (SELECT team_id FROM Teams WHERE team_name='Carolina Hurricanes'), (SELECT team_id FROM Teams WHERE team_name='Philadelphia Flyers'), '2023-08-08', 'Trade'),
((SELECT person_id FROM Person WHERE name='Erik Karlsson'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), '2023-08-06', 'Trade'),
((SELECT person_id FROM Person WHERE name='Mikael Granlund'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2023-08-06', 'Trade'),
((SELECT person_id FROM Person WHERE name='Jeff Petry'), (SELECT team_id FROM Teams WHERE team_name='Pittsburgh Penguins'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), '2023-08-06', 'Trade');

-- July
INSERT INTO Transactions (player_id, origin_team_id, destination_team_id, transaction_date, transaction_type) VALUES
((SELECT person_id FROM Person WHERE name='Alex DeBrincat'), (SELECT team_id FROM Teams WHERE team_name='Ottawa Senators'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), '2023-07-09', 'Trade'),
((SELECT person_id FROM Person WHERE name='Dominik Kubalik'), (SELECT team_id FROM Teams WHERE team_name='Detroit Red Wings'), (SELECT team_id FROM Teams WHERE team_name='Ottawa Senators'), '2023-07-09', 'Trade'),
((SELECT person_id FROM Person WHERE name='Pat Maroon'), (SELECT team_id FROM Teams WHERE team_name='Tampa Bay Lightning'), (SELECT team_id FROM Teams WHERE team_name='Minnesota Wild'), '2023-07-02', 'Trade'),
((SELECT person_id FROM Person WHERE name='Artemi Kniazev'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Winnipeg Jets'), '2023-07-02', 'Trade'),
((SELECT person_id FROM Person WHERE name='Anthony Duclair'), (SELECT team_id FROM Teams WHERE team_name='Florida Panthers'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), '2023-07-01', 'Trade'),
((SELECT person_id FROM Person WHERE name='Steven Lorentz'), (SELECT team_id FROM Teams WHERE team_name='San Jose Sharks'), (SELECT team_id FROM Teams WHERE team_name='Florida Panthers'), '2023-07-01', 'Trade'),
((SELECT person_id FROM Person WHERE name='Colin Miller'), (SELECT team_id FROM Teams WHERE team_name='Dallas Stars'), (SELECT team_id FROM Teams WHERE team_name='New Jersey Devils'), '2023-07-01', 'Trade'),
((SELECT person_id FROM Person WHERE name='Joel Edmundson'), (SELECT team_id FROM Teams WHERE team_name='Montreal Canadiens'), (SELECT team_id FROM Teams WHERE team_name='Washington Capitals'), '2023-07-01', 'Trade');