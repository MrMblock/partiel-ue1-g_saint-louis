<?php

    public function listeIngredient(Medicament $medicament) {

        $nomsIngredients = [];
        
        foreach ($medicament->getIngredients() as $ingredient) { // On récupère les ingrédients du médicament 
            $nomsIngredients[] = $ingredient->getNom(); // Puis on ajoute le nom de tous les ingrédients à notre tableau
        }
        
        return $nomsIngredients;
    }

?>