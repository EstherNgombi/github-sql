USE Projet_Wepoc;
CREATE table Client(
    Id_Client  INT PRIMARY KEY NOT NULL auto_increment,
    Nom_Client VARCHAR(250),
   Prenom_Client  VARCHAR(250)
)



USE Projet_Wepoc;
CREATE table Carburant(
    ID_Carburant INT PRIMARY KEY NOT NULL auto_increment,
    Nom_Litre_Carbu VARCHAR(255),
    Volume_Carburant DECIMAL,
    Prix__Total_Carburant INT,
    
   
)



USE Projet_Wepoc;
CREATE table Station(
    Numero_Station INT PRIMARY KEY NOT NULL auto_increment,
    NomStation VARCHAR(250),
    Adresse_Station VARCHAR(255)
       
)



USE Projet_Wepoc;
CREATE table Payement(
    ID_Payement INT PRIMARY KEY NOT NULL auto_increment,
    Id_Client INT,
    Numero_Station INT,
    ID_Carburant INT,
    Date_Payement DATE,
    Heure_Payement TIME,
      
    FOREIGN KEY (Numero_Station) REFERENCES Station(Numero_Station),
    FOREIGN KEY (Numero_Ticket_Client) REFERENCES Client(Numero_Ticket_Client), 
    FOREIGN KEY (ID_Carburant) REFERENCES Carburant(ID_Carburant)

)