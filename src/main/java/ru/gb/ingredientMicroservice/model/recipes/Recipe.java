package ru.gb.ingredientMicroservice.model.recipes;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;
import ru.gb.ingredientMicroservice.model.products.Ingredient;

import java.util.List;

@Table(name = "recipes")
@Entity
@Data
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, name = "recipe")
    private String recipe;
    @Column(nullable = false, name = "name")
    private String name;
    @Column(nullable = false, name = "calories")
    private Integer calories;
    @Column(nullable = false, name = "protein")
    private Integer protein;
    @Column(nullable = false, name = "fat")
    private Integer fat;
    @Column(nullable = false, name = "carbohydrates")
    private Integer carbohydrates;
    @Column(nullable = false, name = "ingredient_id")
    private Integer ingredient_id;

    /**
     * Поле в котором храниться список ингредиентов.
     * Данное поле использует связную таблицу для наполнения рецептов ингредиентами
     */
    @ManyToMany
    @JoinTable(
            name = "recipe_ingredient",
            joinColumns = @JoinColumn(name = "recipe_id"),
    inverseJoinColumns = @JoinColumn(name = "ingredient_id")
    )
    @JsonManagedReference
    private List<Ingredient> ingredients;

}