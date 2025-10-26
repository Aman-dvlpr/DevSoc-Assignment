// NOTE: This is not a competitive programming assessment.
// You need not optimize the solutions - focus on clarity and correctness.
// NOTE: This assignment is for your practice and learning.
// Kindly do not open the solutions before attempting the assignment.
// Do not use simply if-conditionals to solve the problems.
// You are expected to use loops, recursion, or any other method.
// To run your testcases, use the following command in the terminal:
// dart assignment.dart

// Assignment 1: Reverse a String
// Input: "hello" -> Output: "olleh"
String reverseString(String str) {
  String result = "";
  for (int i = str.length - 1; i >= 0; i--) {
    result += str[i];
  }
  return result;
}

// Assignment 2: Find the Largest Number in a List
// Input: [1, 5, 3, 9, 2] -> Output: 9
int findLargestNumber(List<int> arr) {
  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}

// Assignment 3: Check for Palindrome
// Input: "racecar" -> true
// Input: "hello" -> false
bool isPalindrome(String str) {
  int left = 0;
  int right = str.length - 1;

  while (left < right) {
    if (str[left] != str[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

// Assignment 4: Sum of Even Numbers in a List
// Input: [1, 2, 3, 4, 5, 6] -> 12
int sumEvenNumbers(List<int> arr) {
  int sum = 0;
  for (int num in arr) {
    if (num % 2 == 0) {
      sum += num;
    }
  }
  return sum;
}

// Assignment 5: FizzBuzz
// If a number is divisible by 3, replace it with "Fizz", if it is divisible by 5, replace it with "Buzz", and if it divisble by both 3 and 5, replace it with "FizzBuzz"
// Input: 15
// Output: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
List<String> fizzBuzz(int n) {
  List<String> result = [];
  for (int i = 1; i <= n; i++) {
    String val = "";
    if (i % 3 == 0) val += "Fizz";
    if (i % 5 == 0) val += "Buzz";
    if (val.isEmpty) val = i.toString();
    result.add(val);
  }
  return result;
}

// Assignment 6: Find Pair with Given Sum
// Input: [1, 2, 3, 4, 5], 9 -> true
// Input: [1, 2, 3, 4, 5], 10 -> false
bool hasPairWithSum(List<int> arr, int target) {
  Set seen = Set();

  for (int num in arr) {
    if (seen.contains(target - num)) {
      return true;
    }
    seen.add(num);
  }

  return false;
}

// Assignment 7: Count Vowels in a String
// Input: "hello" -> 2
// Input: "apple" -> 2
int countVowels(String str) {
  int count = 0;
  String vowels = "aeiou";
  String lowerStr = str.toLowerCase();
  for (int i = 0; i < lowerStr.length; i++) {
    if (vowels.contains(lowerStr[i])) {
      count++;
    }
  }
  return count;
}

// Assignment 8: Count Occurrences of an Element
// Input: [1, 2, 3, 2, 4, 2], 2 -> 3
int countOccurrences(List<int> arr, int target) {
  int count = 0;

  for (int num in arr) {
    if (num == target) {
      count++;
    }
  }
  return count;
}

// Assignment 9: Find the First Even Number
// Input: [1, 3, 5, 6, 7, 8] -> 6
// Input: [1, 3, 5, 7] -> null
int? findFirstEven(List<int> arr) {
  for (int num in arr) {
    if (num % 2 == 0) {
      return num;
    }
  }
  return null;
}

// Assignment 10: Factorial of a Number
// Input: 5 -> 120
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Assignment 11: Promise chain
Future<int> asyncChain(int num) async {
  int step1 = num + 10;
  await Future.delayed(Duration(milliseconds: 100)); // we're simulating an async request
  int step2 = step1 * 2;
  await Future.delayed(Duration(milliseconds: 100));
  int step3 = step2 - 5;
  return step3;
}