#include <iostream>
#include<conio.h>

using namespace std;

int main() {
 
  float cotizaciones[5];
  float min=0, max=0, promedio = 0;
  int i, j, k;

  
  for (i = 0; i < 5; i++) {
    cout << "Ingrese la cotización de la empresa " << i + 1 << ": ";
    cin >> cotizaciones[i];
  }

 
  min=cotizaciones[0];
  max = cotizaciones[0];
  
  for (i = 1; i < 5; i++) {
    if (cotizaciones[i] < min) {
      min = cotizaciones[i];
      j = i; 
    } 
  }
  
  for (i = 1; i < 5; i++) {
    if (cotizaciones[i] > max) {
      max = cotizaciones[i];
      k = i; 
    } 
  }

  
  for (i = j; i < 4; i++) {
    cotizaciones[i] = cotizaciones[i + 1];
  }
  for (i = k; i < 4; i++) {
    cotizaciones[i] = cotizaciones[i + 1];
  }

 
  for (i = 0; i < 3; i++) {
    promedio += cotizaciones[i];
  }
  promedio /= 3;

  
  cout << endl;
  cout << "La cotización más barata eliminada es: " << min << endl;
  cout << "La cotización más costosa eliminada es: " << max << endl;
  cout << "El promedio de las cotizaciones sobrantes es: " << promedio << endl;
  
  getch();

  return 0;
}
