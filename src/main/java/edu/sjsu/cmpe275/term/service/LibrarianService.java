package edu.sjsu.cmpe275.term.service;

import edu.sjsu.cmpe275.term.model.Librarian;

/**
 * @author Ajeet
 *
 */
public interface LibrarianService {
	
	/**
	 * 
	 * @param librarian
	 * @return
	 */
	public Librarian saveNewLibrarian(Librarian librarian);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Librarian findLibrarianByUniversityId(String id);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Librarian findLibrarianByEmailId(String id);
	/**
	 * @author Vipul
	 * @param librarian
	 */
	public void updateLibrarian(Librarian librarian);

}
