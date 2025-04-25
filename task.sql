CREATE DATABASE food_products;
use food_products;
CREATE TABLE food(id int , food_name varchar(30) , brand_name varchar(30) , price decimal(30) , manufacturer varchar(30) , country_of_origin varchar(30) , manufactured_date date , expiry_date date , ingredients varchar(100) , is_available_online bool); 

CREATE DATABASE clothes;
use clothes;
CREATE TABLE cloth(id int , cloth_type varchar(30) , material varchar(30) , color varchar(30) ,size char , is_washable bool , brand_name varchar(30) , is_available_online bool , stock  int , discount decimal);

CREATE DATABASE movies;
use movies;

CREATE TABLE movie(id int , movie_name varchar(30) , director varchar(30) , producer varchar(30) , movie_language varchar(30) , hero varchar(30) ,heroine varchar(30) ,budget decimal , is_dubbed bool , relaease_date date);

CREATE TABLE producer(id int , producer_name varchar(30) , age int , no_of_movies int , first_movie varchar(30) , dob date , highest_budget double , highesht_profit double , place varchar(30) , gender char);
ALTER TABLE producer ADD COLUMN movies_language varchar(30) , ADD COLUMN highest_loss double , ADD COLUMN highest_budget_movie varchar(30) , ADD COLUMN highest_profit_movie varchar(30);
ALTER TABLE producer DROP COLUMN movies_language;
ALTER TABLE producer RENAME COLUMN id To producer_id , RENAME COLUMN age TO producer_age , RENAME COLUMN dob TO date_of_birth , RENAME COLUMN place TO birth_place ;
ALTER TABLE producer MODIFY COLUMN highest_budget_movie bigint , MODIFY COLUMN highest_profit_movie bigint , MODIFY COLUMN gender varchar(10), MODIFY COLUMN producer_id varchar(4);
DESC producer;

CREATE TABLE director (id int,director_name varchar(30),age int,no_of_movies int,first_movie varchar(30),dob date,highest_budget double,highest_profit double,place varchar(30),gender char);
ALTER TABLE director ADD COLUMN movies_language varchar(30),ADD COLUMN highest_loss double,ADD COLUMN highest_budget_movie varchar(30),ADD COLUMN highest_profit_movie varchar(30);
ALTER TABLE director DROP COLUMN movies_language;
ALTER TABLE director RENAME COLUMN id TO director_id,RENAME COLUMN age TO director_age,RENAME COLUMN dob TO date_of_birth,RENAME COLUMN place TO birth_place;
ALTER TABLE director MODIFY COLUMN highest_budget_movie bigint,MODIFY COLUMN highest_profit_movie bigint,MODIFY COLUMN gender varchar(10),MODIFY COLUMN director_id varchar(4);
 
CREATE TABLE hero (id int,hero_name varchar(30),age int,no_of_movies int,debut_movie varchar(30),dob date,highest_fee double,highest_boxoffice double,place varchar(30),gender char);
ALTER TABLE hero ADD COLUMN movies_language VARCHAR(30),ADD COLUMN highest_loss DOUBLE,ADD COLUMN highest_fee_movie VARCHAR(30),ADD COLUMN highest_boxoffice_movie VARCHAR(30);
ALTER TABLE hero DROP COLUMN movies_language;
ALTER TABLE hero RENAME COLUMN id TO hero_id,RENAME COLUMN age TO hero_age,RENAME COLUMN dob TO date_of_birth,RENAME COLUMN place TO birth_place;
ALTER TABLE hero MODIFY COLUMN highest_fee_movie BIGINT,MODIFY COLUMN highest_boxoffice_movie BIGINT,MODIFY COLUMN gender VARCHAR(10),MODIFY COLUMN hero_id VARCHAR(4);


CREATE TABLE heroine (id int,heroine_name varchar(30),age int,no_of_movies int,debut_movie varchar(30),dob date,highest_fee double,highest_boxoffice double,place varchar(30),gender char);
ALTER TABLE heroine ADD COLUMN movies_language VARCHAR(30),ADD COLUMN highest_loss DOUBLE,ADD COLUMN highest_fee_movie VARCHAR(30),ADD COLUMN highest_boxoffice_movie VARCHAR(30);
ALTER TABLE heroine DROP COLUMN movies_language;
ALTER TABLE heroine RENAME COLUMN id TO heroine_id, RENAME COLUMN age TO heroine_age,RENAME COLUMN dob TO date_of_birth,RENAME COLUMN place TO birth_place;
ALTER TABLE heroine MODIFY COLUMN highest_fee_movie BIGINT,MODIFY COLUMN highest_boxoffice_movie BIGINT,MODIFY COLUMN gender VARCHAR(10),MODIFY COLUMN heroine_id VARCHAR(4);
DESC heroine;

CREATE TABLE technician (id int,technician_name varchar(30),specialization varchar(30),experience_years int,dob date,highest_project_budget double,highest_project_profit double,place varchar(30),gender char);
ALTER TABLE technician ADD COLUMN certifications VARCHAR(30),ADD COLUMN highest_loss DOUBLE,ADD COLUMN highest_budget_project VARCHAR(30),ADD COLUMN highest_profit_project VARCHAR(30);
ALTER TABLE technician DROP COLUMN certifications;
ALTER TABLE technician RENAME COLUMN id TO technician_id,RENAME COLUMN experience_years TO tech_experience_years,RENAME COLUMN dob TO date_of_birth,RENAME COLUMN place TO birth_place;
ALTER TABLE technician MODIFY COLUMN highest_budget_project bigint,MODIFY COLUMN highest_profit_project bigint,MODIFY COLUMN gender varchar(10),MODIFY COLUMN technician_id varchar(4);
DESC technician;






CREATE DATABASE home_appliances;
use home_appliances;
CREATE TABLE appliances(id int , appliance_name varchar(30) , price decimal , brand_name varchar(30) , manufactured_date date , warranty varchar(30) , no_of_colors_available int , power_consumption varchar(10) , ratings decimal , stock int);