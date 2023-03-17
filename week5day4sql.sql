-- Alright I'm sorry there's just something not working for me on this one and I've been working trying to change minor details 
-- for long enough that I'm just going to give up on this one and schedule a call with an instructor to figure out what's wrong
CREATE OR REPLACE FUNCTION sp_insert_film(
    p_title VARCHAR(255),
    p_description TEXT,
    p_release_year INTEGER,
    p_language_id SMALLINT,
    p_rental_duration SMALLINT,
    p_rental_rate NUMERIC(4, 2),
    p_length SMALLINT,
    p_replacement_cost NUMERIC(5, 2),
    p_rating varchar(10)
)
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
    VALUES (p_title, p_description, p_release_year, p_language_id, p_rental_duration, p_rental_rate, p_length, p_replacement_cost, p_rating);
END;
$$;

CALL sp_insert_film('Michaels Big Day Off', 'A Boy', '1995', 1, 5, 4.99, 120, 14.99, 'G');