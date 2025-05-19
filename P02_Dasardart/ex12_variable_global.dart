// variabel global
int globalVar = 10;

void updateGlobalVar(int val) {
    globalVar = val;
}

void printGlobalVar() {
    print(globalVar);
}

void main(List<String> args) {
    print('Sebelum diubah: ' + globalVar.toString());
    updateGlobalVar(20);
    print('Setelah diubah: ' + globalVar.toString());
}
