FUNCTION sum_of_distinct_elements(arr1, arr2):
    INITIALIZE sum_distinct = 0

    # Iterate through arr1 to find distinct elements
    FOR i FROM 0 TO LENGTH(arr1) - 1:
        SET is_distinct = TRUE
        FOR j FROM 0 TO LENGTH(arr2) - 1:
            IF arr1[i] == arr2[j]:
                SET is_distinct = FALSE
                BREAK
        IF is_distinct:
            sum_distinct = sum_distinct + arr1[i]

    # Iterate through arr2 to find distinct elements
    FOR i FROM 0 TO LENGTH(arr2) - 1:
        SET is_distinct = TRUE
        FOR j FROM 0 TO LENGTH(arr1) - 1:
            IF arr2[i] == arr1[j]:
                SET is_distinct = FALSE
                BREAK
        IF is_distinct:
            sum_distinct = sum_distinct + arr2[i]

    RETURN sum_distinct