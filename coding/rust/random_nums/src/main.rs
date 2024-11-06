use std::io;

fn main() {
    
    println!("Enter guess: ");
    
    // mutable so that it can take input
    let mut in = String::new();

    io::stdin().read_line(&mut in).expect("Failed");


}
