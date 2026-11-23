CREATE VIEW ZI_CHOFERES_ZONA AS
SELECT CHOFER.NUM_CHOFER, CHOFER.NOMBRE, ZONA.MUNICIPIO, ZONA.PROVINCIA
FROM CHOFER
JOIN ZONA ON CHOFER.ZONA = ZONA.ZONA;
/*
Esta vista muestra cada chófer con el municipio y la provincia donde trabaja.
En CHOFER solo está el código de zona; para saber el lugar real hay que unirla con ZONA.
La vista hace esa unión.
*/

CREATE VIEW ZI_VEHICULOS_CHOFER AS
SELECT CHOFER.NUM_CHOFER, CHOFER.NOMBRE, VEHICULOS.COD_VEHIC, VEHICULOS.MATRICULA
FROM CHOFER
JOIN USO ON CHOFER.NUM_CHOFER = USO.NUM_CHOFER
JOIN VEHICULOS ON USO.COD_VEHIC = VEHICULOS.COD_VEHIC;
/* Muestra qué vehículos usa cada chófer, con su matrícula.
Esa información está repartida en tres tablas (CHOFER, USO y VEHICULOS), porque la relación es N:M.
La vista las une y da el resultado directamente.
*/