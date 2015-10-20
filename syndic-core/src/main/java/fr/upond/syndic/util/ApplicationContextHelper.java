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
package fr.upond.syndic.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 
 * @author Lyes Kherbiche
 *
 */
public class ApplicationContextHelper implements ApplicationContextAware {
	
	private static ApplicationContext ctx = null;
	
	public static ApplicationContext getApplicationContext () {
		return ctx;
	}

	@SuppressWarnings("static-access")
	@Override
	public void setApplicationContext(ApplicationContext ctx) throws BeansException {
		
		this.ctx = ctx;
		
	}

}
