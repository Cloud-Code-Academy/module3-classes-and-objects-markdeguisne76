/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Your Name
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        String firstWords = 'Hello, Salesforce!';// Initialize a String with 'Hello, Salesforce!'
        
        String lengthStr = String.valueOf(firstWords.length());// Get the length of the String        
        String substringStr = firstWords.substring(0, 5);// Get a substring of the String of the first 5 characters
        String lowerCaseStr = firstWords.toLowerCase();// Convert the String to lower case
        
        List<String> wordList = new List<String>();// Return the list with the string data
        wordList.add(lengthStr);// In the first position add the string length
        wordList.add(substringStr);// In the second position add the substring
        wordList.add(lowerCaseStr);// In the third position add the string in lower case

        return wordList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        List<Boolean> strContainsWords = new List<Boolean>();// Initialize a list to store the results
        
        strContainsWords.add(input.startsWith('Sales'));// Check if the string starts with 'Sales'
        
        strContainsWords.add(input.endsWith('Force'));// Check if the string ends with 'Force'
        
        strContainsWords.add(input.contains('Awesome'));// Check if the string contains 'Awesome'
        
        return strContainsWords; // Replace null with the variable you used to store the result
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        List<String> wordSplit = sentence.split(' ');// Split the sentence into words

        Set<String> uniqueSentence = new Set<String>();// Create a set to store the unique words

        for (String word : wordSplit) {
            uniqueSentence.add(word);
        }
        List<String> uniqueWordList = new List<String>();// Create a list to store the unique words
        uniqueWordList.addAll(uniqueSentence);
        return String.join(uniqueWordList, ' '); // Replace null with the variable you used to store the result
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        Integer vowelCount = 0; // Initialize vowel count

        str = str.toLowerCase();
    
        for (Integer i = 0; i < str.length(); i++) {
            String c = str.substring(i, i + 1); 
    
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                vowelCount++;
            }
        }
        return vowelCount; // Return the total vowel count
    }

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

        String concatNames = '';// The variable to store the concatenated string
        List<String> filteredNames = new List<String>();

        for (String n : scientistNames) {
            if (n.toLowerCase().contains('g')) {
                filteredNames.add(n);
            }
        }
        concatNames = String.join(filteredNames, ',');
        return concatNames; // Replace null with the variable you used to store the result
    }

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
    // Square the input numbers using the Math.pow() function
    Double squareA = Math.pow(a, 2);
    Double squareB = Math.pow(b, 2);

    // Calculate the absolute difference using Math.abs() function
    Double difference = Math.abs(squareA - squareB);

    return difference;
}

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        Integer numHolder = 50 + Math.floor(Math.random() *51).intValue();// Use Math class to generate number between 50 and 100

        // Return the random integer
        return numHolder; // Replace null with the variable you used to store the result
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        Date newDay = Date.today();// Get the todays date

        String formattedDate = newDay.format();// Format the current date

        // Return the result
        return formattedDate; // Replace null with the variable you used to store the result
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        Map<String,Integer> dateReturn = new Map<String,Integer>{
            'Monday' => 1,
            'Tuesday' => 2,
            'Wednesday' => 3,
            'Thursday' => 4,
            'Friday' => 5,
            'Saturday' => 6,
            'Sunday' => 7
        };// Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.

        String dayName = dt.format('EEEE');// Get the day name using .format('EEEE');

        Integer dayNumber = dateReturn.get(dayName);// Get the day number from the map using the day name

        // Return the result as a string
        return String.valueOf(dayNumber); // Replace null with the variable you used to store the result
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        // If either of the dates is null, return null
        if (d1 == null || d2 == null) {
            return null;
        }
    
        // Ensure that d1 is the earlier date
        if (d1 > d2) {
            Date temp = d1;
            d1 = d2;
            d2 = temp;
        }
        Integer year1 = d1.year();
        Integer year2 = d2.year();
        Integer yearDiff = year2 - year1;
    
        if (d1.month() == 12 && d1.day() == 31 && d2.month() == 1 && d2.day() == 1) {
            yearDiff = 1; 
        }
        else if (d1.month() > d2.month() || (d1.month() == d2.month() && d1.day() > d2.day())) {
            yearDiff--;
        }
    
        return yearDiff; // Return the calculated year difference
    }

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare three public instance variables - title, author, pages
        public String title;// title
        public String author;// author
        public Integer pages;// pages
    
        // Book constructor to initialize the title and author
        public Book(){

        }

        public Book(String title, String author) {
            this.title = title;
            this.author = author;// Initialize the title and author
        }
    
        // Method that returns the details of the book
        public String getBookDetails() {
            // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
            return 'Title: ' + this.title + ', Author: ' + this.author; // Replace null with the variable you used to store the result
        }
    }
    

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        Book newBook = new Book('A Brief History of Time', 'Stephen Hawking');// Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"

        String bookDetails = newBook.getBookDetails();// Call the getBookDetails method on the book object to get the details of the book

        // Return the details of the book
        return bookDetails; // Replace null with the variable you used to store the result
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {// Create a list of books

        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';
        myBook1.pages = 352;

        Book newerBook = new Book('A Brief History of Time', 'Stephen Hawking');// Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        newerBook.pages = 256;

        List<Book> awesomeBooks = new List<Book>{ myBook1, newerBook};

        return awesomeBooks; // Replace null with the variable you used to store the result      
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        private String name;
        private Integer age;// Declare private two instance variables - (TEXT) name and (Number) age
        
        // No argument constructor
        public Person(){
        }
        // Constructor to initialize the name and age
        public Person(String name, Integer age){
            this.name = name;
            this.age = age;
        }
    
        // Method introduceYourself that returns the details of the person     
        public String introduceYourself(){
            return 'Hello, my name is ' + name + ' and I am ' + age + ' years old.';   
        }       
        // Getter method that returns the name of the person
        public String getName(){
            return this.name;
        }
        // Getter method that returns the age of the person
        public Integer getAge() {
            return this.age;
        }
        // Setter method that sets the name of the person
        public void setName(String name) {
            this.name = name;
        }
        // Setter method that sets the age of the person
        public void setAge(Integer age) {
            this.age = age;
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        List<String> results = new List<String>();
        // Create a new instance of Person class
        Person coolGuy = new Person();
        // Name the person 'John Doe' and set the age to 28
        coolGuy.setName('John Doe');
        coolGuy.setAge(28);
        // Add the details of the person using the introduceYourself method
        results.add(coolGuy.introduceYourself());
        // Get the name of the person using the getter method and add it to the list
        results.add(coolGuy.getName());
        // Get the age of the person using the getter method and add it to the list
        results.add(String.valueOf(coolGuy.getAge()));
        return results; // Replace null with the variable you used to store the result
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person coolestGuy = new Person(name, age);
        // Return the new instance of the Person class
        return coolestGuy; // Replace null with the variable you used to store the result
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> perList = new List<Person>(); // List to store created Person objects
        // Loop through each name in the provided list of names
            // Create a new Person object for each name
        for (Integer i = 0; i < names.size(); i++) {
            Person newPerson = new Person(names[i], age);
        // Add the new Person object to the list of Person objects
        perList.add(newPerson);
        }  
        // Return the list of Person objects
        return perList; // Replace null with the variable you used to store the result
    }


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
    if (person1.getAge() > person2.getAge()) {
        return person1;  // person1 is older
        } else if (person2.getAge() > person1.getAge()) {
        return person2;  // person2 is older
        } else {
        return person1;  // They are the same age, return either
        }
    }
}