// Tao danh sach friends type Employee.
// Tim nhung Employee trong danh sach friends co nhieu kinh nghiem hon minh.
class Employee {}

void main() {
  int? total1 = count1(20, 10);
  int? total2 = count2(so1: 10, so2: 20);
  print(total1);
  print(total2);
}

// Tham so bat buoc
int? count1(int? so1, int? so2) {
  return (so1 ?? 0) + (so2 ?? 0);
}

// Tham so co the option hoac la required.
int? count2({required int? so1, required int so2, int? so3}) {
  return (so1 ?? 0) + so2 + (so3 ?? 0);
}
