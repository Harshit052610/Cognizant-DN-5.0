# Week 1: Design Patterns and Principles

This folder contains solutions for two common design patterns: the Singleton Pattern and the Factory Method Pattern.

## Design Patterns and Principles

### Exercise 1: Implementing the Singleton Pattern

This exercise demonstrates the Singleton design pattern using a `Logger` class. The Singleton pattern ensures that a class has only one instance and provides a global point of access to that instance.

- `Design Patterns and Principles/SingletonPatternExample/Logger.java`: Implements the Singleton `Logger` class.
- `Design Patterns and Principles/SingletonPatternExample/SingletonTest.java`: A test class to verify the Singleton implementation.

### Exercise 2: Implementing the Factory Method Pattern

This exercise demonstrates the Factory Method design pattern for creating different types of documents. The Factory Method pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate.

- `Design Patterns and Principles/FactoryMethodPatternExample/Document.java`: Interface for document types.
- `Design Patterns and Principles/FactoryMethodPatternExample/WordDocument.java`: Concrete implementation of `Document`.
- `Design Patterns and Principles/FactoryMethodPatternExample/PdfDocument.java`: Concrete implementation of `Document`.
- `Design Patterns and Principles/FactoryMethodPatternExample/ExcelDocument.java`: Concrete implementation of `Document`.
- `Design Patterns and Principles/FactoryMethodPatternExample/DocumentFactory.java`: Abstract factory class.
- `Design Patterns and Principles/FactoryMethodPatternExample/WordDocumentFactory.java`: Concrete factory for `WordDocument`.
- `Design Patterns and Principles/FactoryMethodPatternExample/PdfDocumentFactory.java`: Concrete factory for `PdfDocument`.
- `Design Patterns and Principles/FactoryMethodPatternExample/ExcelDocumentFactory.java`: Concrete factory for `ExcelDocument`.
- `Design Patterns and Principles/FactoryMethodPatternExample/FactoryMethodTest.java`: A test class to demonstrate document creation using the factory method.

## Algorithms_Data Structures

### Exercise 2: E-commerce Platform Search Function

This exercise focuses on implementing and analyzing search algorithms for an e-commerce platform.

- `Algorithms_Data Structures/ECommerceSearch/Product.java`: Defines the `Product` class with attributes for searching.
- `Algorithms_Data Structures/ECommerceSearch/LinearSearch.java`: Implements the linear search algorithm.
- `Algorithms_Data Structures/ECommerceSearch/BinarySearch.java`: Implements the binary search algorithm (requires a sorted array).
- `Algorithms_Data Structures/ECommerceSearch/SearchTest.java`: A test class to demonstrate and compare linear and binary search.

### Exercise 7: Financial Forecasting

This exercise explores recursive algorithms for financial forecasting.

- `Algorithms_Data Structures/FinancialForecasting/FinancialForecasting.java`: Implements a recursive algorithm to predict future values.
- `Algorithms_Data Structures/FinancialForecasting/FinancialForecastingTest.java`: A test class to demonstrate the financial forecasting.

## PLSQL_Exercises

### Exercise 1: Control Structures

This exercise demonstrates the use of control structures in PL/SQL for various banking scenarios.

- `PLSQL_Exercises/PLSQL_Exercises.sql`: Contains PL/SQL blocks for:
    - Applying a discount to loan interest rates for customers above 60.
    - Promoting customers to VIP status based on their balance.
    - Sending reminders for loans due within the next 30 days.

### Exercise 3: Stored Procedures

This exercise focuses on implementing stored procedures in PL/SQL for common banking operations.

- `PLSQL_Exercises/PLSQL_Exercises.sql`: Contains stored procedures for:
    - Processing monthly interest for savings accounts.
    - Updating employee bonuses based on performance.
    - Transferring funds between customer accounts with balance checks.
