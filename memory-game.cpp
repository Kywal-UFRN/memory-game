#include <iostream>

using namespace std;

int main(){
    int cartas[8]; // 8 registradores
    int contador = 0;
    int x, y;

    while(contador <= 8){ // comparador & máquina de estados
        cin >> x >> y; // teclado numérico
        // virar as cartas para exibir -> display
        // cartas[x] cartas[a][b] = y 
        if(cartas[y] == cartas[x]){ // comparador
            contador++; // contador
            // não mudar mais o estado ao selecionar essas cartas
        } else {
            // desvirar as cartas -> display
        }
    }
}