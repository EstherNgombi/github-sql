USE  exo6_bd_air_maroc;
CREATE table Pilote(
    NumPil INT PRIMARY KEY NOT NULL auto_increment,
    NomPil VARCHAR(250),
    ville VARCHAR(255),
    Salaire INT
)


USE  exo6_bd_air_maroc;
CREATE table Avion(
    NumAv INT PRIMARY KEY NOT NULL auto_increment,
    NomAv VARCHAR(250),
    Capacite INT,
    Ville VARCHAR(255)
)

USE  exo6_bd_air_maroc;
CREATE table Vol(
    NumVol INT PRIMARY KEY NOT NULL auto_increment,
    NumPil INT,
    NumAv INT,
    Ville_Dep VARCHAR(255),
    Ville_Arr VARCHAR(255),
    H_Dep TIME,
    H_Arr TIME,
    FOREIGN KEY (NumPil) REFERENCES Pilote(NumPil),
    FOREIGN KEY (NumAv) REFERENCES Avion(NumAv)
)


USE exo7_entreprise;
CREATE table Departement(
    N_Dep INT PRIMARY KEY NOT NULL auto_increment,
    NomD VARCHAR(250),
    Directeur VARCHAR(255)
    
)  

USE exo7_entreprise;
CREATE table Employe(
    Matricule INT PRIMARY KEY NOT NULL auto_increment,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    DateNaissance DATE,
    Adresse VARCHAR(255),
    Salaire INT,
    N_Dep INT,
    Superieur VARCHAR(255),
    FOREIGN KEY (N_Dep) REFERENCES Departement(N_Dep)
)


USE exo7_entreprise;
CREATE table Projet(
    NomP VARCHAR(250),
    N_Proj INT PRIMARY KEY NOT NULL auto_increment,
    Lieu VARCHAR(255),
    N_Dep INT,
     FOREIGN KEY (N_Dep) REFERENCES Departement(N_Dep)

    
)


USE exo7_entreprise;
CREATE table Travaille(
    Matricule INT,
    N_Proj INT,
    Heure TIME,
    FOREIGN KEY (Matricule) REFERENCES Employe(Matricule),
    FOREIGN KEY (N_Proj) REFERENCES Projet(N_Proj)
    
)
    


USE exo8_agence_voyage;
CREATE table Client(
    NumCli INT PRIMARY KEY NOT NULL auto_increment,
    Nom VARCHAR(250),
    Prenom VARCHAR(250),
    E_mail VARCHAR(250),
    NumCb INT
    
)




USE exo8_agence_voyage;
CREATE table Voyage(
    CodeVoyage INT PRIMARY KEY NOT NULL auto_increment,
    Destination VARCHAR(250),
    Duree VARCHAR(250),
    Prix INT
    
)




USE exo8_agence_voyage;
CREATE table Reservation(
    NumCli INT,
    CodeVoyage INT,
    DateRes DATE,
    FOREIGN KEY (NumCli) REFERENCES Client(NumCli),
    FOREIGN KEY (CodeVoyage) REFERENCES Voyage(CodeVoyage)
    
)



USE  exo9_cinema;
CREATE table Ville(
    CodePostal INT PRIMARY KEY NOT NULL auto_increment,
    NomVille VARCHAR(250)
    
)


USE  exo9_cinema;
CREATE table Cinema(
    NumCine INT PRIMARY KEY NOT NULL auto_increment,
    NomCine VARCHAR(250),
    Adresse VARCHAR(255),
    CodePostal INT,
    FOREIGN KEY (CodePostal) REFERENCES Ville(CodePostal)

)




USE  exo9_cinema;
CREATE table Salle(
    NumSalle INT PRIMARY KEY NOT NULL auto_increment,
    Capacite INT,
    NumCine INT,
    FOREIGN KEY (NumCine) REFERENCES Cinema(NumCine)
    
)




USE exo9_cinema;
CREATE table Film(
    NumExploi INT PRIMARY KEY NOT NULL auto_increment,
    Titre VARCHAR(250),
    Duree VARCHAR(255)
    
)




USE exo9_cinema;
CREATE table Projection(
    NumExploi INT,
    NumSalle INT,
    NumSemaine INT,
    NbEntrees INT,
    FOREIGN KEY (NumExploi) REFERENCES Film(NumExploi),
    FOREIGN KEY (NumSalle) REFERENCES Salle(NumSalle)
)


USE exo10_Tour_De_France;
CREATE table Equipe(
    CodeEquipe PRIMARY KEY NOT NULL auto_increment,
    NomEquipe VARCHAR(250),
    DiecteurSportif VARCHAR(250)

)


USE exo10_Tour_De_France;
CREATE table Pays(
    CodePays PRIMARY KEY NOT NULL auto_increment,
    NomPays VARCHAR(250),

)  


USE exo10_Tour_De_France;
CREATE table Coureur(
    NumeroCoureur PRIMARY KEY NOT NULL auto_increment,
    NomCoureur VARCHAR(250),
    CodeEquipe INT,
    CodePays INT,
    FOREIGN KEY (CodeEquipe) REFERENCES Equipe(CodeEquipe),
    FOREIGN KEY (CodePays) REFERENCES Pays(CodePays)


)   




USE exo10_Tour_De_France;
CREATE table Type_Etape(
    CodeType PRIMARY KEY NOT NULL auto_increment,
    LibelleType VARCHAR(250)

)  



USE exo10_Tour_De_France;
CREATE table Etape(
    NumeroEtap PRIMARY KEY NOT NULL auto_increment,
    DateEtape Date,
    VilleDep  VARCHAR(250),
    VilleArr  VARCHAR(250),
    NbKm INT,
    FOREIGN KEY (CodeType) REFERENCES Type_Etape(CodeType)


)  




