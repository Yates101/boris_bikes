A program that imitates the Boris Bike - allowing users to take Bikes from a docking station and return them to another.

User Stories/Domain Models:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Objects  | Messages
------------- | -------------
Person  | use
Bike  | working?
DockingStation | release_bike

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
