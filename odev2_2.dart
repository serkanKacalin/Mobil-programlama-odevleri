class House {
  int? id;
  int? prize;
  String? name;
  House(int id, int prize, String name) {
    this.id = id;
    this.prize = prize;
    this.name = name;
  }

  void displayInfo() {
    print("House id = $id");
    print("House prize = $prize");
    print("House name = $name");
  }
}

void main() {
  House hs1 = House(1, 1000000, "Mustafa");
  House hs2 = House(2, 2000000, "Bedirhan");
  House hs3 = House(3, 3000000, "Yusuf");

  var houses = [hs1, hs2, hs3];
  houses.forEach((house) => house.displayInfo());
}
