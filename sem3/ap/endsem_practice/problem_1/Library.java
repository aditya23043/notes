import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

// Book class
class Book {
	private String isbn;
	private String title;
	private String author;
	private boolean isAvailable;

	public Book(String isbn, String title, String author, boolean isAvailable) {
		this.isbn = isbn;
		this.title = title;
		this.author = author;
		this.isAvailable = isAvailable;
	}

	public String getIsbn() {
		return isbn;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}

	public boolean isAvailable() {
		return isAvailable;
	}

	public void setAvailable(boolean available) {
		isAvailable = available;
	}

	@Override
	public String toString() {
		return "ISBN: " + isbn + ", Title: " + title + ", Author: " + author + ", Available: " + isAvailable;
	}
}

// Member class
class Member {
	private String memberId;
	private String name;
	private ArrayList<Book> borrowedBooks;

	public Member(String memberId, String name) {
		this.memberId = memberId;
		this.name = name;
		this.borrowedBooks = new ArrayList<>();
	}

	public String getMemberId() {
		return memberId;
	}

	public String getName() {
		return name;
	}

	public ArrayList<Book> getBorrowedBooks() {
		return borrowedBooks;
	}

	public void borrowBook(Book book) {
		borrowedBooks.add(book);
	}

	public void returnBook(Book book) {
		borrowedBooks.remove(book);
	}
}

// Generic Library class
class Library<T extends Member> {
	private HashMap<String, Book> books; // ISBN -> Book
	private HashMap<String, T> members; // Member ID -> Member

	public Library() {
		books = new HashMap<>();
		members = new HashMap<>();
	}

	public void addBook(Book book) {
		books.put(book.getIsbn(), book);
	}

	public void addMember(T member) {
		members.put(member.getMemberId(), member);
	}

	public void lendBook(String memberId, String isbn) throws Exception {
		T member = members.get(memberId);
		Book book = books.get(isbn);

		if (member == null)
			throw new Exception("Member not found.");
		if (book == null)
			throw new Exception("Book not found.");
		if (!book.isAvailable())
			throw new Exception("Book is not available.");

		book.setAvailable(false);
		member.borrowBook(book);
		System.out.println("Lent " + book.getTitle() + " to " + member.getName());
	}

	public void returnBook(String memberId, String isbn) throws Exception {
		T member = members.get(memberId);
		Book book = books.get(isbn);

		if (member == null)
			throw new Exception("Member not found.");
		if (book == null)
			throw new Exception("Book not found.");
		if (!member.getBorrowedBooks().contains(book))
			throw new Exception("This book was not borrowed by the member.");

		book.setAvailable(true);
		member.returnBook(book);
		System.out.println("Returned " + book.getTitle() + " from " + member.getName());
	}

	public void displayAvailableBooks() {
		System.out.println("Available Books:");
		for (Book book : books.values()) {
			if (book.isAvailable()) {
				System.out.println(book);
			}
		}
	}

	// File I/O methods
	public void loadBooksFromFile(String fileName) throws IOException {
		BufferedReader reader = new BufferedReader(new FileReader(fileName));
		String line;

		while ((line = reader.readLine()) != null) {
			String[] parts = line.split(",");
			addBook(new Book(parts[0], parts[1], parts[2], Boolean.parseBoolean(parts[3])));
		}

		reader.close();
	}

	public void loadMembersFromFile(String fileName) throws IOException {
		BufferedReader reader = new BufferedReader(new FileReader(fileName));
		String line;

		while ((line = reader.readLine()) != null) {
			String[] parts = line.split(",");
			Member member = new Member(parts[0], parts[1]);
			addMember((T) member); // Warning: unchecked cast
									// Note: You may want to handle borrowed books loading separately.
									// This example does not load borrowed books for simplicity.
		}

		reader.close();
	}

	public void saveLibraryData(String booksFileName, String membersFileName) throws IOException {
		BufferedWriter booksWriter = new BufferedWriter(new FileWriter(booksFileName));

		for (Book book : books.values()) {
			booksWriter
					.write(book.getIsbn() + "," + book.getTitle() + "," + book.getAuthor() + "," + book.isAvailable());
			booksWriter.newLine();
		}

		booksWriter.close();

		BufferedWriter membersWriter = new BufferedWriter(new FileWriter(membersFileName));

		for (T member : members.values()) {
			membersWriter.write(member.getMemberId() + "," + member.getName());
			// Save borrowed books as ISBNs
			List<Book> borrowedBooks = member.getBorrowedBooks();
			if (!borrowedBooks.isEmpty()) {
				membersWriter.write(
						"," + borrowedBooks.stream().map(Book::getIsbn).reduce((a, b) -> a + ";" + b).orElse(""));
			}
			membersWriter.newLine();
		}

		membersWriter.close();
	}
}

// Main class
public class LibraryManagementSystem {

	public static void main(String[] args) {

		Library<Member> library = new Library<>();

		try {
			library.loadBooksFromFile("books.txt");
			library.loadMembersFromFile("members.txt");

			// Example operations
			library.displayAvailableBooks();

			// Lend two books to a member
			library.lendBook("M001", "978-3-16-148410-0"); // Replace with actual ISBN and Member ID
			library.lendBook("M001", "978-1-4028-9462-6"); // Replace with actual ISBN and Member ID

			library.displayAvailableBooks();

			// Return one book
			library.returnBook("M001", "978-3-16-148410-0"); // Replace with actual ISBN and Member ID

			library.displayAvailableBooks();

			// Save updated data back to files
			library.saveLibraryData("updated_books.txt", "updated_members.txt");

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}
}
