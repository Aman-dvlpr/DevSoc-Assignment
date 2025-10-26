import 'assignment.dart';

// Main function to test
void main() async {
  print(reverseString("hello")); // Expected: "olleh"
  print(findLargestNumber([1, 5, 3, 9, 2])); // Expected: 9
  print(isPalindrome("racecar")); // Expected: true
  print(sumEvenNumbers([1, 2, 3, 4, 5, 6])); // Expected: 12
  print(fizzBuzz(15));
  print(hasPairWithSum([1, 2, 3, 4, 5], 9)); // Expected: true
  print(countVowels("hello")); // Expected: 2
  print(countOccurrences([1, 2, 3, 2, 4, 2], 2)); // Expected: 3
  print(findFirstEven([1, 3, 5, 6, 7, 8])); // Expected: 6
  print(factorial(5)); // Expected: 120

  // async check
  int result = await asyncChain(2);
  print(result); // Expected: 19
}