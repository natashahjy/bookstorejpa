package demo;

import model.BookDAO;
import model.BooksEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Natasha on 8/12/2016.
 */
@WebServlet (name = "BookDetailServlet", urlPatterns = "/bookdetails")
public class BookDetailServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try{
            String bookId = request.getParameter("bookId");
            if(bookId != null){
                BookDAO db = new BookDAO();
                BooksEntity bd = db.getBookDetails(bookId);

                request.setAttribute("book", bd);

                getServletContext().getRequestDispatcher("/bookdetails.jsp").forward(request,response);
            }
        } catch(Exception e){
            e.printStackTrace();
            throw new ServletException();
        }
    }
}
