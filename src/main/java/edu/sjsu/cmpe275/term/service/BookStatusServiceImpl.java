package edu.sjsu.cmpe275.term.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import edu.sjsu.cmpe275.term.dao.BookStatusDAO;
import edu.sjsu.cmpe275.term.model.BookStatus;

public class BookStatusServiceImpl implements BookStatusService {

	@Autowired
	private BookStatusDAO bookStatusDAO;

	public void setBookStatusDAO(BookStatusDAO bookStatusDAO) {
		this.bookStatusDAO = bookStatusDAO;
	}

	@Override
	public void issueBooks(BookStatus bookStatus) {
		bookStatusDAO.issueBooks(bookStatus);
	}
	
	@Override
	public String returnBooks(String bookStatusId) {
		return bookStatusDAO.returnBooks(bookStatusId);
	}

	@Override
	public List<BookStatus> getListOfIssuedBooks(String patronId) {
		return bookStatusDAO.getListOfIssuedBooks(patronId);
	}

	@Override
	public List<BookStatus> findBookStatusByISBN(String isbn) {
		return bookStatusDAO.findBookStatusByISBN(isbn);
	}

	@Override
	public void updateBookStatus(BookStatus bookStatus) {
		bookStatusDAO.updateBookStatus(bookStatus);
	}

	/* (non-Javadoc)
	 * @see edu.sjsu.cmpe275.term.service.BookStatusService#getListOfAllIssuedBooks()
	 */
	@Override
	public List<BookStatus> getListOfAllIssuedBooks() {
		// TODO Auto-generated method stub
		
		return bookStatusDAO.getListOfAllBookStatus();
	}
}
