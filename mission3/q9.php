<?php
    /* Code initial

    public function ajouterMedicament(Medicament $medicament) {
        $this->lesMedicaments[] = $medicament;
    }

    */

    // Code corrigé

    public function ajouterMedicament(Medicament, $medicament) {
        if (!in_array($medicament, $this->lesMedicaments)) { // Si $medicament n'est pas présent dans le tableau, on peut l'ajouter au tableau
            $this -> lesMedicaments[] = $medicament;
        }  
    }
?>