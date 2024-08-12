use std::io;        // input output library of the standard library
use rand::Rng;      // bringing RNG trait to scope in order to use random number generator methods

fn main() {
    
    println!("Guess the number!");          // Prompt

    let secret_number = rand::thread_rng().gen_range(1..=100);
    
    println!("The secret number is: {secret_number}");

    println!("Enter your guess: ");         // macro to print string on screen / terminal buffer

    let mut guess = String::new();          // declaring a NEW mutable string variable

    // could have also done without including the header file
    // std::io::stdin()

    io::stdin()                             // provided by the std::io lib
        .read_line(&mut guess)              // appends text from stdin to argument 
                                            // (without overwriting its contents)
                                            // Note: the arg var should be mutable ofc
                                            // the & is same as C/C++ i.e. pass by reference
                                            // references are immutable by default
                                            // hence, we need to write &mut guess instead of &guess

        .expect("Failed to read line!");    // error handling

    // read_line returns and enum -> Result
    // Each possible state of an enum = Variant
    // Result's variants are -> Ok and Err
    // an instance of Result has an "expect" method

    // this whole code block is same as this ->
    // io::stdin().read_line(&mut guess).expect("Failed to read line");
    // we use the indented & newline method for better readability

    println!("You guessed: {}", guess);

}
