package edu.sjsu.cmpe275.term.model;
/**
 * @author Vipul
 *
 */
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderColumn;
import javax.persistence.Table;

@Entity 
@Table(name="patron")
public class Patron  implements Serializable {
	private static final long serialVersionUID = 5865760835716664141L;
	@Id
	@Column(name = "EMAIL", unique=true)
	private String email;
	@Column(name= "UNIVERSITYID", unique=true)
	private String universityId;
	@Column(name = "FIRSTNAME")
	private String firstName;
	@Column(name = "LASTNAME")
	private String lastName;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "TOTALISSUEDCOUNT")
	private int totalIssuedCount;
	@Column(name = "DAYISSUEDCOUNT")
	private int dayIssuedCount;
	@Column(name = "PENALTY")
	private int penalty;
	@Column(name = "PHONENUMBER")
	private int phoneNumber;
	@Column(name = "STATUS",  nullable= false, columnDefinition= "boolean default false")
	private boolean status; //activation
	@Column(name = "ACTIVATIONCODE", nullable= false, length=5)
	private int activationCode;
	
//	@ManyToMany(cascade = {CascadeType.ALL},fetch=FetchType.EAGER)
//	@JoinTable(name="PATRON_BOOKSTATUS", joinColumns={@JoinColumn(name="email", referencedColumnName = "email")},
//	inverseJoinColumns={@JoinColumn(name="bookStatusId", referencedColumnName= "bookStatusId")})
//	private List<BookStatus> bookStatus;
	
	@ManyToMany(mappedBy="patrons")
	private List<BookStatus> bookStatus=new ArrayList<BookStatus>();
	
	@OneToOne(cascade = CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name="BOOKINGCARTID")
	private BookingCart bookingCart;
	
	public Patron() {
		super();
	}
	/**
	 * 
	 * @param email
	 * @param universityId
	 * @param firstName
	 * @param lastName
	 * @param password
	 * @param totalIssuedCount
	 * @param dayIssuedCount
	 * @param penalty
	 * @param phoneNumber
	 * @param status
	 * @param activationCode
	 * @param bookStatus
	 * @param bookingCart
	 */
	public Patron(String email, String universityId, String firstName, String lastName, String password,
			int totalIssuedCount, int dayIssuedCount, int penalty, int phoneNumber, boolean status, int activationCode,
			List<BookStatus> bookStatus, BookingCart bookingCart) {
		super();
		this.email = email;
		this.universityId = universityId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.totalIssuedCount = totalIssuedCount;
		this.dayIssuedCount = dayIssuedCount;
		this.penalty = penalty;
		this.phoneNumber = phoneNumber;
		this.status = status;
		this.activationCode = activationCode;
		this.bookStatus = bookStatus;
		this.bookingCart = bookingCart;
	}

	/**
	 * 
	 * @return
	 */
	public String getUniversityId() {
		return universityId;
	}
	/**
	 * 
	 * @param universityId
	 */
	public void setUniversityId(String universityId) {
		this.universityId = universityId;
	}
	/**
	 * 
	 * @return
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * 
	 * @return
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * 
	 * @return
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * 
	 * @param firstName
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * 
	 * @return
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * 
	 * @param lastName
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * 
	 * @return
	 */
	public int getTotalIssuedCount() {
		return totalIssuedCount;
	}
	/**
	 * 
	 * @param totalIssuedCount
	 */
	public void setTotalIssuedCount(int totalIssuedCount) {
		this.totalIssuedCount = totalIssuedCount;
	}
	/**
	 * 
	 * @return
	 */
	public int getDayIssuedCount() {
		return dayIssuedCount;
	}
	/**
	 * 
	 * @param dayIssuedCount
	 */
	public void setDayIssuedCount(int dayIssuedCount) {
		this.dayIssuedCount = dayIssuedCount;
	}
	/**
	 * 
	 * @return
	 */
	public int getPenalty() {
		return penalty;
	}
	/**
	 * 
	 * @param penalty
	 */
	public void setPenalty(int penalty) {
		this.penalty = penalty;
	}
	/**
	 * 
	 * @return
	 */
	public int getPhoneNumber() {
		return phoneNumber;
	}
	/**
	 * 
	 * @param phoneNumber
	 */
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	/**
	 * @return
	 */
	public boolean isStatus() {
		return status;
	}
	/**
	 * @param status
	 */
	public void setStatus(boolean status) {
		this.status = status;
	}
	/**
	 * @return
	 */
	public List<BookStatus> getBookStatus() {
		return bookStatus;
	}
	/**
	 * @param bookStatus
	 */
	public void setBookStatus(List<BookStatus> bookStatus) {
		this.bookStatus = bookStatus;
	}

	/**
	 * @return the activationCode
	 */
	public int getActivationCode() {
		return activationCode;
	}

	/**
	 * @param activationCode the activationCode to set
	 */
	public void setActivationCode(int activationCode) {
		this.activationCode = activationCode;
	}
	/**
	 * 
	 * @return
	 */
	public BookingCart getBookingCart() {
		return bookingCart;
	}
	/**
	 * 
	 * @param bookingCart
	 */
	public void setBookingCart(BookingCart bookingCart) {
		this.bookingCart = bookingCart;
	}	
	
}