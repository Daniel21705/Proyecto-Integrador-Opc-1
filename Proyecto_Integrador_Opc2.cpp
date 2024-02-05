#include <iostream>
#include <algorithm>
#include<conio.h>


using namespace std;

int main() {
 
  float cotizaciones[5];
  float min, max, promedio;
  int i = 0;


  cout << "Ingrese las 5 cotizaciones: " << endl;
  while (i < 5) {
    cin >> cotizaciones[i];
    i++;
  }

  
  min = cotizaciones[0];
  max = cotizaciones[0];

  
  i = 1;
  while (i < 5) {
    if (cotizaciones[i] < min) {
      min = cotizaciones[i];
    } else if (cotizaciones[i] > max) {
      max = cotizaciones[i];
    }
    i++;
  }

  
  i = 0;
  while (i < 5) {
    if (cotizaciones[i] == min || cotizaciones[i] == max) {
      cotizaciones[i] = cotizaciones[4 - i];
      i++;
    } else {
      i++;
    }
  }


  promedio = 0;
  i = 0;
  while (i < 3) {
    promedio += cotizaciones[i];
    i++;
  }
  promedio /= 3;

  
  cout << "La cotización más barata eliminada es: " << min << endl;
  cout << "La cotización más costosa eliminada es: " << max << endl;
  cout << "El promedio de las cotizaciones sobrantes es: " << promedio << endl;

  getch();
  return 0;
}
