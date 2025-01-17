SELECT scientifique.nom, scientifique.prenom, scientifique.date_embauche FROM scientifique
JOIN scientifique_medicament ON scientifique.id = scientifique_medicament.idScientifique
JOIN medicament ON scientifique_medicament.idMedicament = medicament.id
WHERE medicament.nom = 'T'
ORDER BY scientifique.nom, scientifique.date_embauche;