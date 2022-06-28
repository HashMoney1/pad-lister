package controllers;
import dao.DaoFactory;
import models.Ad;
import models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/create-ad.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        String location = request.getParameter("location");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        User user = (User) request.getSession().getAttribute("user");
        HashMap<String, String> adErrors = new HashMap<>();

        if (title.isEmpty()) {
            adErrors.put("title","Title cannot be left blank");
        } else {
            request.setAttribute("title", title);
        }

        if (location.isEmpty()) {
            adErrors.put("location","location cannot be left blank");
        } else {
            request.setAttribute("location", location);
        }

        if (description.isEmpty()) {
            adErrors.put("description", "Description cannot be left blank");
        } else {
            request.setAttribute("description", description);
        }

        request.setAttribute("adErrors", adErrors);

        if (title.isEmpty() || description.isEmpty() || location.isEmpty()) {
            request.getRequestDispatcher("/WEB-INF/create-ad.jsp").forward(request, response);
            return;
        } else {

            Ad ad = new Ad (
                    user.getId(),
                    title,
                    description,
                    location
            );

            Long newid = DaoFactory.getAdsDao().insertAd(ad);
            request.setAttribute("newid", newid);
            response.sendRedirect("/profile");
        }
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        for (Part part : request.getParts()) {
            part.write("C:\\upload\\" + fileName);
        }
//        response.getWriter().print("The file uploaded sucessfully.");
        getServletContext().getRequestDispatcher("/WEB-INF/create-ad.jsp").forward(request, response);
    }
    }


