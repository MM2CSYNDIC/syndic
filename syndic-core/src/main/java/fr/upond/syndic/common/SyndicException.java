package fr.upond.syndic.common;

/**
 * 
 * @author Lyes Kherbiche
 *
 */
public class SyndicException extends Exception {

	/**
	 * generated serial number
	 */
	private static final long serialVersionUID = 4829148871558961648L;
	
	
	
	public SyndicException (String message) {
		super(message);
	}
	
	public SyndicException () {
		super();
	}
	
	public SyndicException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public SyndicException (Throwable cause) {
		super(cause);
	}

}
