package com.inaco.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/MyBlog")
public class MyBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String HOST = "jdbc:mysql://localhost:3306/blogtest";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	
	private Connection connection;
	
	public void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(HOST, USER, PASSWORD);
		} catch (SQLException e) {
			System.out.println("Ошибка подключения к БД");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	
	@Override
	public void destroy() {
		
		super.destroy();
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void init() throws ServletException {
		super.init();
		connect();
	}

	ResultSet executequery(String query) throws SQLException {

		return (connection.createStatement().executeQuery(query));		
	}
	int executeUpdate(String query) throws SQLException {
		return (connection.createStatement().executeUpdate(query));		
	}
	

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    ArrayList<Articles> list = new ArrayList<>();
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html;charset=UTF-8");	
		
		try {
			ResultSet rs;
			rs = executequery("select * from posts ORDER BY id DESC");			
			while (rs.next()) {				
				list.add(new Articles(rs.getString(2), rs.getString(3)));				
	            }			 
			request.setAttribute("result", list.stream().map(e -> "<fieldset><strong>" + e.getTitle() + "</strong><hr><br>" 
			+ e.getPost()).collect(Collectors.joining("</fieldset><br><br>")));
			
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp"); 
	        dispatcher.forward(request,response);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain");	
		response.setCharacterEncoding("UTF-8");		
		String title = request.getParameter("title");
		String post = request.getParameter("post");
		String one = request.getParameter("one");
		PrintWriter out = response.getWriter();
		
		
		out.print(one);
		
		try {			
			executeUpdate("INSERT INTO posts (title, post) VALUES ('"
					+ title +"', '" + post + "');");			
		} catch (SQLException e) {			
			e.printStackTrace();
		}
	}

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
