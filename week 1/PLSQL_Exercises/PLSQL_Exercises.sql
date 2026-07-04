-- Exercise 1: Control Structures - Scenario 1: Discount for customers above 60
DECLARE
    CURSOR c_customers IS
        SELECT customer_id, age, loan_interest_rate
        FROM Customers;
    v_customer_id Customers.customer_id%TYPE;
    v_age Customers.age%TYPE;
    v_loan_interest_rate Customers.loan_interest_rate%TYPE;
BEGIN
    FOR customer_rec IN c_customers LOOP
        IF customer_rec.age > 60 THEN
            UPDATE Customers
            SET loan_interest_rate = customer_rec.loan_interest_rate * 0.99
            WHERE customer_id = customer_rec.customer_id;
            DBMS_OUTPUT.PUT_LINE('Applied 1% discount to customer ' || customer_rec.customer_id);
        END IF;
    END LOOP;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Exercise 1: Control Structures - Scenario 2: Promote to VIP based on balance
DECLARE
    CURSOR c_customers IS
        SELECT customer_id, balance
        FROM Accounts;
    v_customer_id Accounts.customer_id%TYPE;
    v_balance Accounts.balance%TYPE;
BEGIN
    FOR customer_rec IN c_customers LOOP
        IF customer_rec.balance > 10000 THEN
            UPDATE Customers
            SET IsVIP = TRUE
            WHERE customer_id = customer_rec.customer_id;
            DBMS_OUTPUT.PUT_LINE('Customer ' || customer_rec.customer_id || ' promoted to VIP status.');
        END IF;
    END LOOP;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Exercise 1: Control Structures - Scenario 3: Send reminders for loans due in 30 days
DECLARE
    CURSOR c_loans IS
        SELECT l.loan_id, c.customer_name, l.due_date
        FROM Loans l
        JOIN Customers c ON l.customer_id = c.customer_id
        WHERE l.due_date BETWEEN SYSDATE AND (SYSDATE + 30);
    v_loan_id Loans.loan_id%TYPE;
    v_customer_name Customers.customer_name%TYPE;
    v_due_date Loans.due_date%TYPE;
BEGIN
    FOR loan_rec IN c_loans LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: Loan ' || loan_rec.loan_id || ' for customer ' || loan_rec.customer_name || ' is due on ' || TO_CHAR(loan_rec.due_date, 'DD-MON-YYYY') || '.');
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Exercise 3: Stored Procedures - Scenario 1: Process monthly interest
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN
    UPDATE Accounts
    SET balance = balance * 1.01
    WHERE account_type = 'Savings';
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Monthly interest processed for all savings accounts.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error processing monthly interest: ' || SQLERRM);
END;
/

-- Exercise 3: Stored Procedures - Scenario 2: Update employee bonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_department_id IN Employees.department_id%TYPE,
    p_bonus_percentage IN NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET salary = salary * (1 + p_bonus_percentage / 100)
    WHERE department_id = p_department_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee bonuses updated for department ' || p_department_id);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error updating employee bonus: ' || SQLERRM);
END;
/

-- Exercise 3: Stored Procedures - Scenario 3: Transfer funds
CREATE OR REPLACE PROCEDURE TransferFunds (
    p_source_account_id IN Accounts.account_id%TYPE,
    p_destination_account_id IN Accounts.account_id%TYPE,
    p_amount IN NUMBER
)
IS
    v_source_balance Accounts.balance%TYPE;
BEGIN
    SELECT balance INTO v_source_balance
    FROM Accounts
    WHERE account_id = p_source_account_id;

    IF v_source_balance < p_amount THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient funds in source account.');
    END IF;

    UPDATE Accounts
    SET balance = balance - p_amount
    WHERE account_id = p_source_account_id;

    UPDATE Accounts
    SET balance = balance + p_amount
    WHERE account_id = p_destination_account_id;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Funds transferred successfully from ' || p_source_account_id || ' to ' || p_destination_account_id || '.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error transferring funds: ' || SQLERRM);
END;
/
