#- Afficher tous les payements  dont le mois est octobre de l'année 2023
Select * FROM Payement_Carburant WHERE Mois = 11 AND Année = 2023;

Select ID_Payement FROM Payement_Carburant WHERE Mois = 11 AND Année = 2023;

#-Affiche le montant des totaux des prix pour chaque mois 
Select Total_ttc, Mois FROM Payement_Carburant;

#- Affiche le nombre total de litre de carburant consommé pour chaque mois 
Select Volume_Carburant, Mois FROM Payement_Carburant;