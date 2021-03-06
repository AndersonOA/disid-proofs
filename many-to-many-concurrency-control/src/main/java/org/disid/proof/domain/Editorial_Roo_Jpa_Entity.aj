// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.disid.proof.domain;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.disid.proof.domain.Book;
import org.disid.proof.domain.Editorial;
import org.springframework.util.Assert;

privileged aspect Editorial_Roo_Jpa_Entity {
    
    declare @type: Editorial: @Entity;
    
    declare @type: Editorial: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Editorial.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Editorial.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param booksToAdd
     */
    public void Editorial.addToBooks(Iterable<Book> booksToAdd) {
        Assert.notNull(booksToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Book item : booksToAdd) {
            this.books.add(item);
            item.setEditorial(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param booksToRemove
     */
    public void Editorial.removeFromBooks(Iterable<Book> booksToRemove) {
        Assert.notNull(booksToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Book item : booksToRemove) {
            this.books.remove(item);
            item.setEditorial(null);
        }
    }
    
}
