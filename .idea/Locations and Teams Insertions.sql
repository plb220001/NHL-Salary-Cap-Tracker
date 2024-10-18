-- Establish the 32 locations
INSERT INTO Locations (city, state, nation) VALUES
('Washington', 'DC', 'USA'), -- Washington Capitals
('Toronto', 'ON', 'Canada'), -- Toronto Maple Leafs
('Denver', 'CO', 'USA'), -- Colorado Avalanche
('St. Louis', 'MO', 'USA'), -- St Louis Blues
('Las Vegas', 'NV', 'USA'), -- Vegas Golden Knights
('Tampa', 'FL', 'USA'), -- Tampa Bay Lightning
('Sunrise', 'FL', 'USA'), -- Florida Panthers
('Boston', 'MA', 'USA'), -- Boston Bruins
('St. Paul', 'MN', 'USA'), -- Minnesota Wild
('Nashville', 'TN', 'USA'), -- Nashville Predators
('Montreal', 'QC', 'Canada'), -- Montréal Canadiens
('Seattle', 'WA', 'USA'), -- Seattle Kraken
('Pittsburgh', 'PA', 'USA'), -- Pittsburgh Penguins
('Elmont', 'NY', 'USA'), -- New York Islanders
('New York', 'NY', 'USA'), -- New York Rangers
('Newark', 'NJ', 'USA'), -- New Jersey Devils
('Los Angeles', 'CA', 'USA'), -- LA Kings
('Ottawa', 'ON', 'Canada'), -- Ottawa Senators
('Winnipeg', 'MB', 'Canada'), -- Winnipeg Jets
('Vancouver', 'BC', 'Canada'), -- Vancouver Canucks
('Detroit', 'MI', 'USA'), -- Detroit Red Wings
('Dallas', 'TX', 'USA'), -- Dallas Stars!
('Raleigh', 'NC', 'USA'), -- Carolina Hurricanes
('Edmonton', 'AB', 'Canada'), -- Edmonton Oilers
('San Jose', 'CA', 'USA'), -- San Jose Sharks
('Philadelphia', 'PA', 'USA'), -- Philadelphia Flyers
('Chicago', 'IL', 'USA'), -- Chicago Blackhawks
('Buffalo', 'NY', 'USA'), -- Buffalo Sabres
('Salt Lake City', 'UT', 'USA'), -- Utah Hockey Club
('Calgary', 'AB', 'Canada'), -- Calgary Flames
('Columbus', 'OH', 'USA'), -- Columbus Blue Jackets
('Anaheim', 'CA', 'USA'); -- Anaheim Ducks!!

-- Set the current NHL salary cap, which is $88 million
SET @salary_cap = 88000000;

-- Create all 32 teams
INSERT INTO Teams (location, team_name, division, cap_space, cap_hit, roster_size) VALUES
((SELECT location_id FROM Locations WHERE city = 'Washington' AND state = 'DC' AND nation = 'USA'), 'Washington Capitals', 'Metropolitan', @salary_cap - 100317499, 100317499, 25),
((SELECT location_id FROM Locations WHERE city = 'Toronto' AND state = 'ON' AND nation = 'Canada'), 'Toronto Maple Leafs', 'Atlantic', @salary_cap - 94090935, 94090935, 29),
((SELECT location_id FROM Locations WHERE city = 'Denver' AND state = 'CO' AND nation = 'USA'), 'Colorado Avalanche', 'Central', @salary_cap - 90802500, 90802500, 28),
((SELECT location_id FROM Locations WHERE city = 'St. Louis' AND state = 'MO' AND nation = 'USA'), 'St. Louis Blues', 'Central', @salary_cap - 90363040, 90363040, 28),
((SELECT location_id FROM Locations WHERE city = 'Las Vegas' AND state = 'NV' AND nation = 'USA'), 'Vegas Golden Knights', 'Pacific', @salary_cap - 89978290, 89978290, 28),
((SELECT location_id FROM Locations WHERE city = 'Tampa' AND state = 'FL' AND nation = 'USA'), 'Tampa Bay Lightning', 'Atlantic', @salary_cap - 88954166, 88954166, 24),
((SELECT location_id FROM Locations WHERE city = 'Sunrise' AND state = 'FL' AND nation = 'USA'), 'Florida Panthers', 'Atlantic', @salary_cap - 88505832, 88505832, 24),
((SELECT location_id FROM Locations WHERE city = 'Boston' AND state = 'MA' AND nation = 'USA'), 'Boston Bruins', 'Atlantic', @salary_cap - 88313333, 88313333, 24),
((SELECT location_id FROM Locations WHERE city = 'St. Paul' AND state = 'MN' AND nation = 'USA'), 'Minnesota Wild', 'Central', @salary_cap - 88181087, 88181087, 25),
((SELECT location_id FROM Locations WHERE city = 'Nashville' AND state = 'TN' AND nation = 'USA'), 'Nashville Predators', 'Central', @salary_cap - 88170031, 88170031, 23),
((SELECT location_id FROM Locations WHERE city = 'Montreal' AND state = 'QC' AND nation = 'Canada'), 'Montréal Canadiens', 'Atlantic', @salary_cap - 88137916, 88137916, 24),
((SELECT location_id FROM Locations WHERE city = 'Seattle' AND state = 'WA' AND nation = 'USA'), 'Seattle Kraken', 'Pacific', @salary_cap - 87995712, 87995712, 21),
((SELECT location_id FROM Locations WHERE city = 'Pittsburgh' AND state = 'PA' AND nation = 'USA'), 'Pittsburgh Penguins', 'Metropolitan', @salary_cap - 87817437, 87817437, 25),
((SELECT location_id FROM Locations WHERE city = 'Elmont' AND state = 'NY' AND nation = 'USA'), 'New York Islanders', 'Metropolitan', @salary_cap - 87787500, 87787500, 22),
((SELECT location_id FROM Locations WHERE city = 'New York' AND state = 'NY' AND nation = 'USA'), 'New York Rangers', 'Metropolitan', @salary_cap - 87734022, 87734022, 24),
((SELECT location_id FROM Locations WHERE city = 'Newark' AND state = 'NJ' AND nation = 'USA'), 'New Jersey Devils', 'Metropolitan', @salary_cap - 87224999, 87224999, 25),
((SELECT location_id FROM Locations WHERE city = 'Los Angeles' AND state = 'CA' AND nation = 'USA'), 'Los Angeles Kings', 'Pacific', @salary_cap - 87145833, 87145833, 26),
((SELECT location_id FROM Locations WHERE city = 'Ottawa' AND state = 'ON' AND nation = 'Canada'), 'Ottawa Senators', 'Atlantic', @salary_cap - 86040713, 86040713, 22),
((SELECT location_id FROM Locations WHERE city = 'Winnipeg' AND state = 'MB' AND nation = 'Canada'), 'Winnipeg Jets', 'Central', @salary_cap - 86023690, 86023690, 25),
((SELECT location_id FROM Locations WHERE city = 'Vancouver' AND state = 'BC' AND nation = 'Canada'), 'Vancouver Canucks', 'Pacific', @salary_cap - 85585832, 85585832, 24),
((SELECT location_id FROM Locations WHERE city = 'Detroit' AND state = 'MI' AND nation = 'USA'), 'Detroit Red Wings', 'Atlantic', @salary_cap - 85382639, 85382639, 22),
((SELECT location_id FROM Locations WHERE city = 'Dallas' AND state = 'TX' AND nation = 'USA'), 'Dallas Stars', 'Central', @salary_cap - 84810831, 84810831, 23),
((SELECT location_id FROM Locations WHERE city = 'Raleigh' AND state = 'NC' AND nation = 'USA'), 'Carolina Hurricanes', 'Metropolitan', @salary_cap - 84150920, 84150920, 23),
((SELECT location_id FROM Locations WHERE city = 'Edmonton' AND state = 'AB' AND nation = 'Canada'), 'Edmonton Oilers', 'Pacific', @salary_cap - 84100832, 84100832, 23),
((SELECT location_id FROM Locations WHERE city = 'San Jose' AND state = 'CA' AND nation = 'USA'), 'San Jose Sharks', 'Pacific', @salary_cap - 82719996, 82719996, 30),
((SELECT location_id FROM Locations WHERE city = 'Philadelphia' AND state = 'PA' AND nation = 'USA'), 'Philadelphia Flyers', 'Metropolitan', @salary_cap - 82463094, 82463094, 25),
((SELECT location_id FROM Locations WHERE city = 'Chicago' AND state = 'IL' AND nation = 'USA'), 'Chicago Blackhawks', 'Central', @salary_cap - 81758333, 81758333, 23),
((SELECT location_id FROM Locations WHERE city = 'Buffalo' AND state = 'NY' AND nation = 'USA'), 'Buffalo Sabres', 'Atlantic', @salary_cap - 81653847, 81653847, 24),
((SELECT location_id FROM Locations WHERE city = 'Salt Lake City' AND state = 'UT' AND nation = 'USA'), 'Utah Hockey Club', 'Pacific', @salary_cap - 79777975, 79777975, 29),
((SELECT location_id FROM Locations WHERE city = 'Calgary' AND state = 'AB' AND nation = 'Canada'), 'Calgary Flames', 'Pacific', @salary_cap - 70129165, 70129165, 25),
((SELECT location_id FROM Locations WHERE city = 'Columbus' AND state = 'OH' AND nation = 'USA'), 'Columbus Blue Jackets', 'Metropolitan', @salary_cap - 68271665, 68271665, 29),
((SELECT location_id FROM Locations WHERE city = 'Anaheim' AND state = 'CA' AND nation = 'USA'), 'Anaheim Ducks', 'Pacific', @salary_cap - 68229166, 68229166, 25);