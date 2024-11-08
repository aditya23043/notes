use std::net::TcpListener;
use std::net::IpAddr;

fn main() {
    let listener = TcpListener::bind("192.168.1.7:7878").unwrap();

    for stream in listener.incoming() {
        let _stream = stream.unwrap();

        println!("Connection Established!");
    }
}
