package ECommerceSearch;

public class SearchTest {
    public static void main(String[] args) {
        Product[] products = {
            new Product("P001", "Laptop", "Electronics"),
            new Product("P002", "Mouse", "Electronics"),
            new Product("P003", "Keyboard", "Electronics"),
            new Product("P004", "Monitor", "Electronics"),
            new Product("P005", "Desk", "Furniture")
        };

        System.out.println("Linear Search:");
        Product foundProduct = LinearSearch.linearSearch(products, "Keyboard");
        System.out.println("Found: " + foundProduct);
        foundProduct = LinearSearch.linearSearch(products, "Chair");
        System.out.println("Found: " + foundProduct);

        System.out.println("\nBinary Search:");
        BinarySearch.sortProducts(products);
        foundProduct = BinarySearch.binarySearch(products, "Monitor");
        System.out.println("Found: " + foundProduct);
        foundProduct = BinarySearch.binarySearch(products, "Table");
        System.out.println("Found: " + foundProduct);
    }
}