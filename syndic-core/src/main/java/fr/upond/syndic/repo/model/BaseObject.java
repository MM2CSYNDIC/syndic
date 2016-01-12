/*******************************************************************************
 * Copyright (C) 2015-2016 UPOND SYNDIC. 
 *  
 * This file is part of UPOND SYNDIC
 *  
 * UPOND SYNDIC is free software: you can redistribute it and/or modify 
 * it under the terms of the GNU Lesser General Public License as published by 
 * the Free Software Foundation, either version 3 of the License, or 
 * (at your option) any later version. 
 *  
 * UPOND SYNDIC is distributed in the hope that it will be useful, 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
 * GNU Lesser General Public License for more details. 
 *  
 * You should have received a copy of the GNU Lesser General Public License along with UPOND SYNDIC. If not, see <http://www.gnu.org/licenses/>.
 ******************************************************************************/
package fr.upond.syndic.repo.model;

import java.io.Serializable;

/**
 * Base class for Model objects.  Child objects should implement toString(), 
 * equals() and hashCode();
 * 
 * @author Lyes Kherbiche
 *
 */
public abstract class BaseObject implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public abstract String toString ();
	@Override
	public abstract boolean equals (Object o);
	@Override
	public abstract int hashCode ();

}
