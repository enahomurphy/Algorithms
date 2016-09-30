# You are to create a Car class that can be used to instantiate various vehicles.
#
# It takes in arguments that depict the type, model, and name of the vehicle,
# provided they are set.
#
# Let the test guide you to building your Car boiler-plate.
# Test Results

class Car(object):
    """docstring for car."""
    
    def __init__(self, name="General", model="GM", vehicle=None):
        self.name = name
        self.model = model
        self.vehicle = vehicle
        self.num_of_wheels = self.name in ["Opel", "Koenigsegg"] ? 2 : 4

  



car = Car("Opel")

print car.num_of_wheels
