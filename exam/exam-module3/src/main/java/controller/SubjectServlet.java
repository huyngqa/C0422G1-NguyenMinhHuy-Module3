package controller;

import model.Level;
import model.Module;
import model.Subject;
import model.TypeSubject;
import service.InformationSubjectService;
import service.SubjectService;
import service.impl.InformationSubjectServiceImpl;
import service.impl.SubjectServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SubjectServlet", urlPatterns = {"","/subject"})
public class SubjectServlet extends HttpServlet {
    private SubjectService subjectService = new SubjectServiceImpl();
    private InformationSubjectService informationSubjectService = new InformationSubjectServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionSubject");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAddSubject(request, response);
                break;
            default:
                showListSubject(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionSubject");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "delete":
                deleteSubject(request, response);
                break;
        }
    }

    private void deleteSubject(HttpServletRequest request, HttpServletResponse response) {
        String idSubject = request.getParameter("deleteId");
        subjectService.deleteSubjectById(idSubject);
        try {
            response.sendRedirect("/subject");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListSubject(HttpServletRequest request, HttpServletResponse response) {
        List<Subject> subjects = subjectService.findAllSubject();
        request.setAttribute("subjects", subjects);
        try {
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAddSubject(HttpServletRequest request, HttpServletResponse response) {
        List<Level> levels = informationSubjectService.findAllLevel();
        List<Module> modules = informationSubjectService.findAllModule();
        List<TypeSubject> typeSubjects = informationSubjectService.findAllTypeSubject();
        request.setAttribute("levels", levels);
        request.setAttribute("modules", modules);
        request.setAttribute("typeSubjects", typeSubjects);
        try {
            request.getRequestDispatcher("view/subject/add.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
