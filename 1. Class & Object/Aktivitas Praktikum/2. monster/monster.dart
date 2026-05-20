class Monster {
  String nama = "monster";
  int hitpoint = 100;

  void menyerang() {
    if (this.hitpoint > 0) {
      print("Monster ${this.nama} melakukan serangan");
    } else {
      print(
        "Monster ${this.nama} tidak dapat melakukan serangan karena sudah mati",
      );
    }
  }

  void diserang(int hitpoint) {
    if (this.hitpoint > 0) {
      this.hitpoint -= hitpoint;

      print(
        "Monster ${this.nama} terkena serangan dengan hitpoint sebesar $hitpoint.",
      );
      print("Sisa hitpoint: ${this.hitpoint}");
    } else {
      print("Monster ${this.nama} mati");
    }
  }
}
