//José Glauber Braz de Olveira - 115210873
#include <iostream>

using namespace std;

int main() {

int temperaturaEntrada;
int contador = 0;

    do {
    cin >> temperaturaEntrada;
        if (temperaturaEntrada < 0) {
        contador+=1;
        }
    } while (temperaturaEntrada != 0);

    cout << contador;
    return 0;
}

