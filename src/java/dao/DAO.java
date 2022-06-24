/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Book> Search(String bookcode, String title, String author, String category) {
        List<Book> list = new ArrayList<>();
        String query = "select * from book where bookcode like ? and title like  ? and author like ? and category like ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + bookcode + "%");
            ps.setString(2, "%" + title + "%");
            ps.setString(3, "%" + author + "%");
            ps.setString(4, "%" + category + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void UpdateBook(String bookcode) {

        String query = "update book set booked=1 where bookcode = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, bookcode);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
}
