USE exo6_bd_air_maroc;
INSERT INTO Pilote VALUES ('1', 'KOFFI','Marrakech',39000),
                          ('2','KOFFIN','Meknes',1000),
                          ('3','TUNKO','Paris',2000)


USE exo6_bd_air_maroc;
INSERT INTO Avion VALUES ('1', 'Aerovan',100,'Marrakech'),
                          ('2','Albatross',350,'Moknes'),
                          ('3','Alca',500,'Paris')


USE exo6_bd_air_maroc;
INSERT INTO Vol VALUES ('1', '1','1','Guelmin','Paris','23h30','10h00'),
                        ('2', '2','2','Marrakeck','Nice','01h40','12h00'),
                          ('3','3','3','Toulouse','Lyon','16h00','03h20')


 USE exo7_entreprise;
 INSERT INTO Departement VALUES ('1', 'Recherche','Koffin'),
                               ('2','Technique','Motti'),
                              ('3','Renseignement','Babou')



USE exo7_entreprise;
INSERT INTO Employe VALUES ('1', 'Lamharchi','Taha','1990-08-16','Sophia-Antipolis','3000','1','Badou'),
                          ('2','Mahmoud','Dounia','1989-02-20','Moscou','2000','2','Mamadou'),
                          ('3','Baudry','Soumia','1995-03-05','Toulouse','5000','3','Titan') 



USE exo7_entreprise;
INSERT INTO Projet VALUES ('Data', '1','Guelmim','1'),
                          ('Entreprenariat','2','Paris','2'),
                          ('Red','3','Toulouse','3')
                          
                          
USE exo7_entreprise;                          
INSERT INTO Travaille VALUES ('1', '1','09:00:OO'),
                          ('2','2','16:30:00'),
                          ('3','3','10:00:00')




USE exo8_agence_voyage;
INSERT INTO Client VALUES ('1', 'KOFFI','Taha','ngombiroxane@gmail.com',40),
                          ('2','Mahmoud','Dounia','wakspace@gmail.com',20),
                          ('3','TUNKO','Soumia','tunko@gmail.com',78)




USE exo8_agence_voyage;
INSERT INTO Voyage VALUES ('1', 'Paris','14jours',2500),
                          ('2','Nice','12jours',1000),
                          ('3','Thionville','5jours',2000)






USE exo8_agence_voyage;
INSERT INTO Reservation VALUES ('1', '1','2024-08-16'),
                          ('2','2','2024-02-22'),
                          ('3','3','2024-03-05')




USE  exo9_cinema;
INSERT INTO Ville VALUES ('1', 'Meknes'),
                          ('2','Marseille'),
                          ('3','Belgique')




USE exo9_cinema;
INSERT INTO Cinema VALUES ('1', 'RIF','Viennes','1'),
                          ('2','Pathé','Milton','2'),
                          ('3','Gaumont','Mousco','3')



 USE exo9_cinema;
INSERT INTO Salle VALUES ('1', '50','1'),
                          ('2','200','2'),
                          ('3','100','3')





USE exo9_cinema;
INSERT INTO Film VALUES ('1', 'Evades','4h'),
                          ('2','Le Parrain','2h'),
                          ('3','Le roi Lion','1h')




USE exo9_cinema;
INSERT INTO Projection VALUES ('1', '1','25','4'),
                          ('2','2','18','8'),
                          ('3','3','50','2')