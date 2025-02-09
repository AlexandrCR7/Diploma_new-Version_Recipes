create table ingredients (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
TYPE VARCHAR(50) NOT NULL,
PRODUCTNAME VARCHAR(50) NOT NULL,
WEIGHT INT NOT NULL,
PRICEFOR100GR FLOAT NOT NULL
);

create table recipe (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
recipe VARCHAR(300) NOT NULL,
name VARCHAR(300) NOT NULL,
calories INT NOT NULL,
protein INT NOT NULL,
fat INT NOT NULL,
carbohydrates INT NOT NULL,
ingredient_id INT NOT NULL,
FOREIGN KEY (ingredient_id) REFERENCES ingredients (id)
);

CREATE TABLE recipe_ingredient
(
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES recipe (id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients (id)
);
