#BASE DE DONNEE exo6_bd_air_maroc

#Donnez la liste des avions dont la capacité est supérieure à 350 passagers.
SELECT * from Avion where Capacite >= 350;

#Quels sont les numéros et noms des avions localisés à Marrakech ?
SELECT NumAv,NomAv from Avion where Ville = "Marrakech";

#Quels sont les numéros des pilotes en service et les villes de départ de leurs vols ?
SELECT NumPil,Ville_Dep from Vol;
SELECT Pilote.NumPil,Ville_Dep from Pilote INNER JOIN Vol ON Pilote.NumPil = Vol.NumPil;

#Donnez toutes les informations sur les pilotes de la compagnie
SELECT * from Pilote;

#Quel est le nom des pilotes domiciliés à Meknès dont le salaire est supérieur à 20000 DH ?
SELECT NomPil from Pilote where Ville = "Meknes" AND Salaire > 20000;

#Quels sont les avions (numéro et nom) localisés à Marrakech ou dont la capacié est inférieure à 350 passagers ?
SELECT NumAv,NomAv from Avion where Ville = "Marrakech" AND Capacite < 350;

#Quels sont les numéros des pilotes qui ne sont pas en service ?
SELECT NumPil from Pilote where NumPil NOT IN (SELECT DISTINCT NumPil from Vol);

#Donnez le numéro des vols effectués au départ de Marrakech par des pilotes de Meknès ?
SELECT NumVol from Vol INNER JOIN Pilote ON Pilote.Numpil = Vol.NumPil where Ville_Dep = "Marrakech" AND Pilote.Ville = "Meknes";

SELECT DISTINCT V.NUMVOL FROM VOL AS V, PILOTE AS P 
WHERE V.NUMPIL=P.NUMPIL AND V.VILLE_DEP="Marrakeck" AND P.VILLE="Meknes";

#Quels sont les vols effectues par un avion qui nest pas localisé à Marrakech ?
SELECT NumVol FROM Vol INNER JOIN Avion ON Avion.NumAv= Vol.NumAv where Avion.Ville !="Marrakeck";





#BASE DE DONNEE exo7_entreprise;

#Exprimer en SQL les requêtes suivantes :

#Date de naissance et ladresse de Taha Lamharchi
SELECT DateNaissance,Adresse FROM Employe WHERE Nom = "Lamhachi" AND Prenom ="Taha";

#Nom et adresse des employés qui travaillent au département de recherche.
Select Nom, Adresse FROM Employe INNER JOIN Departement on Departement.N_Dep= Employe.N_Dep
WHERE NomD = "Recherche";

Select Nom, Adresse FROM Employe AS E, Departement AS D
WHERE D.N_Dep= E.N_Dep  AND NomD = "Recherche";


SELECT  DISTINCT NumVol FROM Vol AS V, Avion AS A
where A.NumAv= V.NumAv AND  A.Ville !="Marrakeck";

SELECT  DISTINCT NumVol FROM Vol , Avion 
where Avion.NumAv= Vol.NumAv AND  Avion.Ville !="Marrakeck";


#Nom et Prénom des employés dont le supérieur est Taha Lamharchi
SELECT Nom, Prenom FROM Employe WHERE Superieur = (SELECT Matricule from Employe WHERE nom = "Lamharchi" AND Prenom ="Taha");

#Nom des employés qui travaillent plus de 10heures sur un projet à Guelmim
SELECT Nom from Employe AS E, Travaille AS T, Projet AS P
WHERE E.Matricule = T.Matricule AND T.N_Proj = P.N_Proj
AND Heure >= 1O AND Lieu = "Guelmin";

SELECT Nom from Employe INNER JOIN Travaille ON Travaille.Matricule = Employe.Matricule
INNER JOIN Projet ON Travaille.N_Proj = Projet.N_Proj WHERE Heure >= 10 AND Lieu = "Guelmin";


#Nom des projets sur lesquelles travaillent Taha Lamharchi et Dounia Mahmoud.
SELECT N_Proj FROM Travaille AS T, Employe AS E
WHERE E.Matricule = T.Matricule AND Nom = "Lamharchi" AND Prenom = "Taha"
INTERSECT
SELECT N_Proj FROM Travaille AS T, Employe AS E
WHERE E.Matricule = T.Matricule AND Nom = "Mahmoud" AND Prenom = "Dounia";


SELECT N_Proj FROM Travaille INNER JOIN Employe ON Employe.Matricule = Travaille.Matricule
WHERE  Nom = "Lamharchi" AND Prenom = "Taha" AND Nom = "Mahmoud" AND Prenom = "Dounia";

#Nom et prénom des employés qui ne travaillent sur aucun projet.
SELECT Nom,Prenom FROM Employe WHERE Matricule NOT IN (SELECT DISTINCT Matricule FROM Travaille);

#Numéro des projets qui ont au moins un participant de chaque département.


#Nom des employés qui ne travaillent pas sur un projet à Guelmim
SELECT Nom FROM Employe WHERE Matricule NOT IN(SELECT Travaille.Matricule From Travaille AS T, projet AS P
WHERE T.N_Proj = P.N_Proj AND Lieu = "Guelmin" )


#BASE DE DONNEE  exo8_agence_voyage

#Formuler en SQL les requêtes suivantes :

#Nom, prénom et e-mail des clients ayant une réservation en cours
SELECT Nom, Prenom, E_mail FROM Client WHERE NumCli IN (SELECT DISTINCT NumCli FROM Reservation);


#Nom, prénom et e-mail des clients nayant aucune réservation en cours
SELECT Nom, Prenom, E_mail FROM Client  WHERE NumCli NOT IN (SELECT DISTINCT NumCli FROM Reservation );


#Destination et liste des clients ayant réservés pour un voyage de plus de 10 jours et coûtant moins de 1000 DH.
SELECT Nom,Prenom, Destination FROM Client AS C, Reservation AS R, Voyage AS V
WHERE C.NumCli = R.NumCli AND V.CodeVoyage = R.CodeVoyage AND V.Duree = 10jours AND Prix < 1000;

#Numéros de tous les clients ayant réservés sur tous les voyages proposés.
SELECT NumCli FROM Client


#BASE DE DONNEE exo9_cinema

#Ecrivez les requêtes suivantes en algèbre relationnelle :

#Titre des films dont la durée est supérieure ou égale à deux heures
SELECT Titre FROM Film WHERE Duree >= 2h;

#Nom des villes abritant un cinéma nommé « RIF »
SELECT NomVille FROM VILLE INNER JOIN Cinema ON VILLE.CodePostal = Cinema.CodePostal
WHERE NomCine = "RIF";

SELECT NomVille FROM VILLE AS V, Cinema AS C WHERE V.CodePostal = C.CodePostal
WHERE NomCine = "RIF";

SELECT NomVille FROM VILLE WHERE CodePostal IN (SELECT CodePostal FROM CINEMA WHERE NomCine="RIF");


#Nom des cinémas situés à Meknès ou contenant au moins une salle de plus 100 places

SELECT 
    NomCine
FROM Cinema INNER JOIN Ville 
    ON Cinema.CodePostal = Ville.CodePostal
    INNER JOIN Salle 
    ON Cinema.NumCine = Salle.NumCine  
WHERE  NomVille = "Meknes" OR Salle.Capacite >= 100;


SELECT 
    NomCine 
FROM Cinema WHERE CodePostal=(SELECT CodePostal from VILLE WHERE NomVille = "Meknes")
OR NumCine IN (SELECT NumCine FROM Salle WHERE Capacite >= 100);


#Nom, adresse et ville des cinémas dans lesquels on joue le film « Hypnose » la semaine 18
SELECT
   C.NomCine , C.Adresse , V.NomVille 
FROM CINEMA as C, VILLE as V
WHERE C.CodePostal=V.CodePostal AND
C.NumCine IN (SELECT S.NumCine FROM SALLE as S, FILM as F, PROJECTION as P WHERE P.NumExploit=F.NumExploit AND P.NumSalle=S.NumSalle AND F.Titre=’Hypnose’ AND P.NumSemaine=18)


#Numéro dexploitation des films projetés dans toutes les salles?
SELECT 
  NumExploi
 FROM Projection
 GROUP BY NumExploi 
HAVING count(*)=(SELECT count(*) FROM SALLE)  


#Titre des films qui n’ont pas été projetés?
SELECT 
  Titre
 FROM Film WHERE NumExploi NOT IN (SELECT  NumExploi FROM Projection)



  I

 



