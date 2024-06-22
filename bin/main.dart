class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Method to drive the car and add miles to milesDriven
  void drive(double miles) {
    milesDriven += miles;
  }

  // Getter methods
  double getMilesDriven() => milesDriven;
  String getBrand() => brand;
  String getModel() => model;
  int getYear() => year;

  // Method to get the age of the car
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

  // Override toString() to get a better string representation of the object
  @override
  String toString() {
    return 'Car(brand: $brand, model: $model, year: $year, milesDriven: $milesDriven)';
  }
}

void main() {
  // Creating three instances of the Car class
  Car car1 = Car('Toyota', 'Corolla', 2020, 15000.5);
  Car car2 = Car('Honda', 'Civic', 2018, 30000.0);
  Car car3 = Car('Ford', 'Mustang', 2016, 45000.3);
  Car car4 = Car('Toyota', 'CHR', 2022, 40000.3);

  // Driving each car a different number of miles
  car1.drive(500.5);
  car2.drive(200.0);
  car3.drive(800.7);

  // Printing the car details
  print('Car 1: ${car1.getBrand()}, ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()}');
  print('Car 2: ${car2.getBrand()}, ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()}');
  print('Car 3: ${car3.getBrand()}, ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()}');
  print('Car 4: ${car4.getBrand()}, ${car4.getModel()}, Year: ${car4.getYear()}, Miles Driven: ${car4.getMilesDriven()}, Age: ${car4.getAge()}');

  // Printing the total number of Car objects created
  print('Total number of Car objects created: ${Car.numberOfCars}');
}
