// NOTE: This is not a competitive programming assessment.
// You need not optimize the solutions - focus on clarity and correctness.
// NOTE: This assignment is for your practice and learning.
// KINDLY DO NOT OPEN THE SOLUTIONS BEFORE ATTEMPTING THE ASSIGNMENT.
// Do not use simply if-conditionals to solve the problems.
// You are expected to use loops, recursion, or any other method.
// To run your testcases, use the following command in the terminal:
// dart main.dart

// Assignment 1: Reverse a String
// Input: "hello" -> Output: "olleh"
import 'dart:developer';
import 'dart:async';

String reverseString(String str) {
  int i=0;
  String rev="";
  for (i=(str.length-1); i>=0; i-- )
  {
    rev=rev+str[i];
  }
  return rev;
}

// Assignment 2: Find the Largest Number in a List
// Input: [1, 5, 3, 9, 2] -> Output: 9
int findLargestNumber(List<int> arr) {
  int max=0;
  for( int num in arr)
  {
    if(num>max)
    max=num;
  }

  return max;
}

// Assignment 3: Check for Palindrome
// Input: "racecar" -> true
// Input: "hello" -> false
bool isPalindrome(String str) {
  int i=0;
  String rev="";
   for (i=(str.length-1); i>=0; i-- )
  {
    rev=rev+str[i];
  }
  if(rev==str)
  return true;
  return false;
}

// Assignment 4: Sum of Even Numbers in a List
// Input: [1, 2, 3, 4, 5, 6] -> 12
int sumEvenNumbers(List<int> arr) {
  int s=0;
  for(int num in arr)
  {
    if(num%2==0)
    {
      s=s+num;
    }
  }
  return s;
}

// Assignment 5: FizzBuzz
// If a number is divisible by 3, replace it with "Fizz", if it is divisible by 5, replace it with "Buzz", and if it divisble by both 3 and 5, replace it with "FizzBuzz"
// Input: 15
// Output: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
List<String> fizzBuzz(int n) {
  List<String> Fizzbuzz=[];
  for(int i=1; i<=n; i++)
  {
    if(i%3==0 && i%5==0)
    Fizzbuzz.add("FizzBuzz");
    else if(i%3==0)
    {
      Fizzbuzz.add("Fizz"); 

    }
    else if(i%5==0)
    Fizzbuzz.add("Buzz");
    else
    {
      Fizzbuzz.add(i.toString());
    }
    }


  return Fizzbuzz;
}

// Assignment 6: Find Pair with Given Sum
// Input: [1, 2, 3, 4, 5], 9 -> true
// Input: [1, 2, 3, 4, 5], 10 -> false
bool hasPairWithSum(List<int> arr, int target) {
  arr.sort();
  int l=0;
  int r=arr.length-1;
  while(l<r)
  {
    int sum=arr[l]+arr[r];
    if(sum==target)
    return true; 
    else if(sum<target)
    l++;
    else
    r--;
  }
  return false;
}

// Assignment 7: Count Vowels in a String
// Input: "hello" -> 2
// Input: "apple" -> 2
int countVowels(String str) {
  int c=0; 
  for( int i=0; i<str.length; i++)
  {
    if("AEIOUaeiou".contains(str[i]))
    {
      c++;
    }
  }
  return c;
}

// Assignment 8: Count Occurrences of an Element
// Input: [1, 2, 3, 2, 4, 2], 2 -> 3
int countOccurrences(List<int> arr, int target) {
  int c=0;
  for(int num in arr)
  {
    if(num==target)
    c++;
  }
  return c;
}

// Assignment 9: Find the First Even Number
// Input: [1, 3, 5, 6, 7, 8] -> 6
// Input: [1, 3, 5, 7] -> null
int? findFirstEven(List<int> arr) {
  for( int num in arr)
  {
    if(num%2==0)
    return num;
  }
  return null;
}

// Assignment 10: Factorial of a Number
// Input: 5 -> 120
int factorial(int n) {
  int fac=1;
  for(int i=1; i<=n; i++)
  {
    fac=fac*i;
  }
  return fac;
}

// Assignment 11: Promise chain
// Task: Add 10 to num, then multiply by 2, then subtract 5
// Do learn what asynchornous code is rather than just completing this function
// Use this link: https://dart.dev/libraries/dart-async
Future<int> asyncChain(int num) async {
  // step 1
  await Future.delayed(Duration(milliseconds: 100));
  num=num+10; // we're simulating an async request
  // step 2
  await Future.delayed(Duration(milliseconds: 100));
  num=num*2;
  // step 3
  await Future.delayed(Duration(milliseconds: 100));
  num=num-5;
  return num;
}
