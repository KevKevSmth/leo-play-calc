program calculator_v2_1gca7l.aleo {

    function sum(a: field, b: field) -> field {
        return a + b;
    }

    function subtract(a: field, b: field) -> field {
        return a - b;
    }

    function multiply(a: field, b: field) -> field {
        return a * b;
    }

    function divide(a: field, b: field) -> field {
        // Ensure division by zero is not allowed
        assert(b != 0field);

        return a / b;
    }

    // Testing the calculator transitions
    transition main() {
        let result_add: field = sum(3field, 4field);
        let result_subtract: field = subtract(8field, 5field);
        let result_multiply: field = multiply(2field, 6field);
        let result_divide: field = divide(9field, 3field);

        // Asserting the results
        assert_eq(result_add, 7field);
        assert_eq(result_subtract, 3field);
        assert_eq(result_multiply, 12field);
        assert_eq(result_divide, 3field);
    }
}
