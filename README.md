# Karate Testing Framework for APIs for Bosta tracking service.

This project contains automated tests written with the **Karate testing framework** to test the **Bosta tracking service**. The tests validate the functionality of the API, which are described in the [APIs for Bosta tracking service](https://tracking.bosta.co/docs).

The tests target the API's endpoints, ensuring they function as expected.

---

## Requirements

- **Java Version**: Java 17 or higher (up to Java 25)
- **Maven**: Maven is included within the project. No need for external installation.

---

## Getting Started

1. **Clone the Repository**:
   ```perl
   git clone <repository_url>

2. **Navigate to Project Directory**:
   ```perl
   cd <project_directory>

3. **Install Dependencies**:
   ```perl
   .\mvnw compile

4. **Run Tests**:
   ```perl
   .\mvnw clean test
   
## Test Reports

Once the tests have finished executing, a summary report will be generated. Report could be found at the following path:

> Note: The actual path may vary depending on the disk letter assigned to project.\
> For example, on a typical Windows setup, the path could look like:
    
   ```perl
   file:///C:/Git/<project-name>/target/karate-reports/karate-summary.html
   ```
Replace `C:` with the appropriate disk letter where the project is located.\
Check the report path from the console output as it will print the exact path to the report.

Open the `karate-summary.html` file in the browser of choice to review the test results.

---

## Project Structure

- `src/test/java/test/shipments`: Contains the test scenarios written in Karate.
- `src/test/java/test/resources/data`: Contains the test data
- `pom.xml`: The Maven configuration file, including dependencies for Karate and other required libraries.

```perl
Project:.
    ├───.mvn
    │   └───wrapper
    └───src
        └───test
            └───java
                └───test
                    ├───resources
                    │   └───data
                    └───shipments
```