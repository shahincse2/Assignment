class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() => milesDriven;
  String getBrand() => brand;
  String getModel() => model;
  int getYear() => year;

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

  @override
  String toString() {
    return 'Car(brand: $brand, model: $model, year: $year, milesDriven: $milesDriven)';
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2020, 15000.5);
  Car car2 = Car('Honda', 'Civic', 2018, 30000.0);
  Car car3 = Car('Ford', 'Mustang', 2016, 45000.3);
  Car car4 = Car('Toyota', 'CHR', 2022, 4000.3);

  car1.drive(500.5);
  car2.drive(200.0);
  car3.drive(800.7);

  print('_____Car 1_____\nBrand Name: ${car1.getBrand()}, \nModel Name: ${car1.getModel()}, \nYear: ${car1.getYear()}, \nMiles Driven: ${car1.getMilesDriven()}, \nAge: ${car1.getAge()}');
  print('\n_____Car 2_____\nBrand Name: ${car2.getBrand()}, \nModel Name: ${car2.getModel()}, \nYear: ${car2.getYear()}, \nMiles Driven: ${car2.getMilesDriven()}, \nAge: ${car2.getAge()}');
  print('\n_____Car 3_____\nBrand Name: ${car3.getBrand()}, \nModel Name: ${car3.getModel()}, \nYear: ${car3.getYear()}, \nMiles Driven: ${car3.getMilesDriven()}, \nAge: ${car3.getAge()}');
  print('\n_____Car 4_____\nBrand Name: ${car4.getBrand()}, \nModel Name: ${car4.getModel()}, \nYear: ${car4.getYear()}, \nMiles Driven: ${car4.getMilesDriven()}, \nAge: ${car4.getAge()}');

  print('\nTotal number of Car objects created: ${Car.numberOfCars}');
}
