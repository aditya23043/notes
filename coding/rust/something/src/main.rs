fn main() {
    println!("{}", add2(2,3));

    let x: &str = "Something else";
    println!("{}", x);
}

fn add2(x: i32, y: i32) -> i32 {
    x + y
}
