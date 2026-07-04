# Week 1: Design Patterns and Principles

This folder contains solutions for two common design patterns: the Singleton Pattern and the Factory Method Pattern.

## Exercise 1: Implementing the Singleton Pattern

This exercise demonstrates the Singleton design pattern using a `Logger` class. The Singleton pattern ensures that a class has only one instance and provides a global point of access to that instance.

- `SingletonPatternExample/src/main/java/SingletonPatternExample/Logger.java`: Implements the Singleton `Logger` class.
- `SingletonPatternExample/src/main/java/SingletonPatternExample/SingletonTest.java`: A test class to verify the Singleton implementation.

## Exercise 2: Implementing the Factory Method Pattern

This exercise demonstrates the Factory Method design pattern for creating different types of documents. The Factory Method pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate.

- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/Document.java`: Interface for document types.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/WordDocument.java`: Concrete implementation of `Document`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/PdfDocument.java`: Concrete implementation of `Document`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/ExcelDocument.java`: Concrete implementation of `Document`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/DocumentFactory.java`: Abstract factory class.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/WordDocumentFactory.java`: Concrete factory for `WordDocument`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/PdfDocumentFactory.java`: Concrete factory for `PdfDocument`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/ExcelDocumentFactory.java`: Concrete factory for `ExcelDocument`.
- `FactoryMethodPatternExample/src/main/java/FactoryMethodPatternExample/FactoryMethodTest.java`: A test class to demonstrate document creation using the factory method.
