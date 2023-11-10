class Animals {
  int? id;
  String? name;
  String? color;

  void displayInfo() {
    print("Animal id = $id");
    print("Animal name = $name");
    print("Animal color = $color");
  }
}

class Cat extends Animals {
  String? Sound;
  Cat(String Sound) {
    this.Sound = Sound;
  }
}

void main() {
  Cat cat1 = Cat("Meow");
  cat1.id = 1;
  cat1.name = "boncuk";
  cat1.color = "mavi";
  cat1.displayInfo();
}
