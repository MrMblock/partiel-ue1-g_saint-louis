SELECT scientifique.nom, scientifique.prenom, scientifique.date_embauche FROM scientifique
JOIN injection ON scientifique.id = injection.idScientifique
JOIN vaccin ON injection.idVaccin = vaccin.id
WHERE DATEDIFF(NOW(), injection.date_vaccination) > vaccin.duree_vaccin;