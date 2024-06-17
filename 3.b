#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Define constants for shape types
#define CIRCLE 0
#define SQUARE 1
#define RECTANGLE 2

// Define a structure for a circle
struct Circle {
    double radius;
};

// Define a structure for a square
struct Square {
    double sideLength;
};

// Define a structure for a rectangle
struct Rectangle {
    double length;
    double width;
};
// Define a union for representing different shapes
union Shape {
    struct Circle circle;
    struct Square square;
    struct Rectangle rectangle;
};

// Function to calculate the area of a circle
double calculateCircleArea(struct Circle c) {
    return M_PI * c.radius * c.radius;
}

// Function to calculate the area of a square
double calculateSquareArea(struct Square s) {
    return s.sideLength * s.sideLength;
}
// Function to calculate the area of a rectangle
double calculateRectangleArea(struct Rectangle r) {
    return r.length * r.width;
}

