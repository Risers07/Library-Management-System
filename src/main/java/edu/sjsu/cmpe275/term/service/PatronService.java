package edu.sjsu.cmpe275.term.service;

import java.util.List;

import edu.sjsu.cmpe275.term.model.Patron;

public interface PatronService {
	/**
	 * 
	 * @param patron
	 * @return
	 */
	public Patron saveNewPatron(Patron patron);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Patron findPatronByUniversityId(String id);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Patron findPatronByEmailId(String id);
	/**
	 * @author Vipul
	 * @param patron
	 */
	public void updatePatron(Patron patron);
	
	/**
	 * 
	 * @return
	 */
	public List<Patron> findAllPatron();
}