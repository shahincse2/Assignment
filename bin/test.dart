class A {
  void display() {
    print('A');
  }
}

class B extends A {
  @override
  void display() {
    print('B');
  }
}

void main() {
  A a = B();

  a.display();
}
