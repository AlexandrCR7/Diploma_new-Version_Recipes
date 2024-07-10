insert into ingredients (id, type, category, weight, price)
values (1, 'Белки', 'Мясо', 100.0, '20.0');
insert into ingredients (id, type, category, weight, price)
values (2, 'Углеводы', 'Макароны', 100.0,  '26.0');
insert into ingredients (id, type, category, weight, price)
values (3, 'Углеводы', 'Гречка', 100.0,  '30.0');
insert into ingredients (id, type, category, weight, price)
values (4, 'Жиры', 'Масло сливочное', 100.0,  '40.0');
insert into recipes (id, recipe, name, calories, protein, fat, carbohydrates, ingredient_id)
values (1, 'Пожарить еду 5 минут', 'Жареная еда',  40.0, 30.0, 10.0, 10.0, 1);
insert into recipe_ingredient (recipe_id, ingredient_id)
values (1, 1), (1, 2), (1, 3);
insert into recipes (id, recipe, name, calories, protein, fat, carbohydrates, ingredient_id)
values (2, 'Отварить сосиску 2 минуты', 'Вареная сосиска', 175, 11, 15, 7, 1);
insert into recipes (id, recipe, name, calories, protein, fat, carbohydrates, ingredient_id)
values (3, 'Отварить сосиску 2 минуты', 'Вареная сосиска', 175, 11, 15, 7, 1);
insert into ingredients (id, type, category, weight, price)
values (5, 'Клетчатка', 'Мясо', 100.0,  '220.0');
insert into recipe_ingredient (recipe_id, ingredient_id)
values (2, 4), (2, 5);
insert into ingredients (id, type, category, weight, price)
values (6, 'Клетчатка', 'Мясо', 100.0,  '220.0');
