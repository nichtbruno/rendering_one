#ifndef UTILS_H
#define UTILS_H

/**
 * @brief Calculates the length of a null-terminated string.
 *
 * This function counts the number of characters in a string up to,
 * but not including, the null terminator ('\0').
 *
 * @param s Pointer to the null-terminated string to be measured.
 * @return The number of characters in the string, excluding the null terminator.
 *
 * @note This function assumes that the input string is properly null-terminated.
 * @warning Passing a non-null-terminated string may result in undefined behavior.
 *
 * Example usage:
 * @code
 * char *myString = "Hello, World!";
 * int length = stringL(myString);
 * printf("The length of the string is: %d\n", length);
 * @endcode
 */
int stringL(char *s);

typedef struct {
    int value;
    int index;
} HashEntry;

#endif
