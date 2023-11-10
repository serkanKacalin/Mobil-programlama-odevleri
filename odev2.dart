class Laptop {
  int? id;
  int? ram;
  String? name;

  void displayInfo() {
    print("Laptop id: $id");
    print("Laptop ram: $ram");
    print("Laptop name: $name\n");
  }
}

void main() {
  Laptop lp1 = Laptop();
  lp1.id = 1;
  lp1.ram = 8;
  lp1.name = "ahmet";
  lp1.displayInfo();

  Laptop lp2 = Laptop();
  lp2.id = 2;
  lp2.ram = 8;
  lp2.name = "mehmet";
  lp1.displayInfo();

  Laptop lp3 = Laptop();
  lp3.id = 3;
  lp3.ram = 16;
  lp3.name = "rustem";
  lp1.displayInfo();
}
