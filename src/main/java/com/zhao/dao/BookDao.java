package com.zhao.dao;

import org.apache.ibatis.annotations.Param;
import com.zhao.pojo.Book;

import java.util.List;
/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:05
 */

public interface BookDao {

    //增加一个Books
    int addBook(Book books);

    //根据id删除Books
    int deleteBookByID(@Param("bookID") int id);

    //更新Books
    int updateBook(Book books);

    //根据id查询Book
    Book queryBookByID(@Param("bookID") int id);

    //查看全部的Book
    List<Book> queryAllBook();

}
