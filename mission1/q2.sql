CREATE USER 'Wesker'@'ResidentEvilUC.fr' IDENTIFIED BY 'Je recherche une alternance svp contactez moi au 06 14 95 61 80 ou sur Teams'; -- L'utilisateur pourra se connecter depuis le serveur ResidentEvilUC
GRANT ALL PRIVILEGES ON UmbrellaCorporation.* TO 'Wesker'@'ResidentEvilUC.fr'; -- On lui donne tous les privilèges
FLUSH PRIVILEGES; -- Applique les changements