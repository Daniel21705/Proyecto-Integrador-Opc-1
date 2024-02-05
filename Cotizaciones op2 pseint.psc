Algoritmo Opcion1
    Definir cotizacion1, cotizacion2, cotizacion3, cotizacion4, cotizacion5, menor, mayor, promedio Como Real;
    Definir cotizaciones, i Como Real;
	
    Escribir "Ingrese las cotizaciones de las 5 empresas:";
    Leer cotizacion1, cotizacion2, cotizacion3, cotizacion4, cotizacion5;
	
    Dimensionar cotizaciones[5];
    cotizaciones[0] <- cotizacion1;
    cotizaciones[1] <- cotizacion2;
    cotizaciones[2] <- cotizacion3;
    cotizaciones[3] <- cotizacion4;
    cotizaciones[4] <- cotizacion5;
	
    menor <- cotizacion1;
    mayor <- cotizacion1;
    i <- 2;
	
    Mientras i <= 4 Hacer
        Si cotizaciones[i] < menor Entonces
            menor <- cotizaciones[i];
        Fin Si
		
        Si cotizaciones[i] > mayor Entonces
            mayor <- cotizaciones[i];
        Fin Si
		
        i <- i + 1;
    Fin Mientras
	
    promedio <- (cotizacion1 + cotizacion2 + cotizacion3 + cotizacion4 + cotizacion5 - menor - mayor) / 3;
	
    Escribir "La cotización más barata eliminada es:", menor;
    Escribir "La cotización más cara eliminada es:", mayor;
    Escribir "El promedio de las cotizaciones restantes es:", promedio;
FinAlgoritmo

