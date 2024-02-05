Proceso Calcular_dosis_mientras_hacer
	definir altura, peso, edad, calculardosis como real;
	definir continuar Como entero;
	definir sexo como cadena;
	Escribir "Escriba 1 si hay un paciente o 0 si ya no hay mas";
	leer continuar;
	
	Mientras continuar = 1 hacer 
	Escribir "Ingrese el sexo del paciente (hombre o mujer):";
	leer sexo;
	Escribir "Ingrese el peso del paciente:";
	leer peso;
	Escribir "Ingrese el altura del paciente:";
	leer altura;
	Escribir "Ingrese la edad del paciente:";
	leer edad;
	
	
	si (altura >= 1.60 y peso >= 150 y sexo == "hombre" y edad >= 18) entonces 
		calculardosis <- ((0.2 * altura) + (0.8* peso));
		Escribir "La dosis necesaria para este paciente es: ", calculardosis; 
	sino 
		si (altura >= 1.50 y peso >= 130 y sexo == "mujer" y edad >= 18) entonces 
			calculardosis <- ((0.25 * altura) + (0.75* peso));
			Escribir "La dosis necesaria para este paciente es: ", calculardosis;
		sino 
			si (altura < 1.60 y peso < 150 y sexo == "hombre" y edad >= 18) entonces 
				calculardosis <- ((0.3 * altura) + (0.7* peso));
				Escribir "La dosis necesaria para este paciente es: ", calculardosis;
			sino 
				si (altura < 1.50 y peso < 130 y sexo == "mujer" y edad >= 18) entonces 
					calculardosis <- ((0.35 * altura) + (0.65* peso));
					Escribir "La dosis necesaria para este paciente es: ", calculardosis;
				sino 
					si edad < 18 Entonces
						Escribir "El paciente es menor de edad no puede recibir ninguna dosis";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Fin mientras 
	
	
FinProceso
