//José Glauber Braz de Oliveira - 115210873
#include <stdio.h>

int main() {
	int index[4];
    char palavra[20];


for (int i=0; i<4; i++) {
    scanf("%d", &index[i]);
}

for (int i=0; i<4; i++) {
    scanf("%s", palavra);
    printf("%c", palavra[index[i]]);
    }
    return 0;
}
