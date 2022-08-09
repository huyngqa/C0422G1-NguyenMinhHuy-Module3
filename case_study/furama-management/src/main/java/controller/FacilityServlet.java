package controller;

import model.*;
import service.FacilityService;
import service.TypeFacilityService;
import service.impl.FacilityServiceImpl;
import service.impl.TypeFacilityServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FacilityServlet", value = "/service")
public class FacilityServlet extends HttpServlet {
    FacilityService facilityService = new FacilityServiceImpl();
    TypeFacilityService typeFacilityService = new TypeFacilityServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionService = request.getParameter("actionService");
        if (actionService == null) {
            actionService = "";
        }
        switch (actionService) {
            case "add":
                showFormAddService(request, response);
                break;
            case "edit":
                showFormEditService(request, response);
                break;
            default:
                showListFacility(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionService = request.getParameter("actionService");
        switch (actionService) {
            case "add":
                addNewService(request, response);
                break;
            case "edit":
                editService(request,response);
                break;
            case "delete":
                deleteFacility(request, response);
                break;
            case "search":
                searchFacilityByName(request, response);
                break;
        }
    }

    private void searchFacilityByName(HttpServletRequest request, HttpServletResponse response) {
        String searchName = request.getParameter("searchService");
        List<Facility> facilities = facilityService.searchFacilityByName(searchName);
        request.setAttribute("facilities", facilities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        facilityService.deleteFacilityById(id);
        try {
            response.sendRedirect("/service");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) {
        Facility facility;
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double area = Double.parseDouble(request.getParameter("area"));
        int cost = Integer.parseInt(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("max_people"));
        int rentType = Integer.parseInt(request.getParameter("rent_type"));
        RentalType rentalType = typeFacilityService.getRentalTypeById(rentType);
        int facilityType = Integer.parseInt(request.getParameter("service_type"));
        TypeFacility typeFacility = typeFacilityService.getTypeOfFacilityById(facilityType);
        if(facilityType==1) {
            String standardRoom = request.getParameter("standard_room");
            String descriptionOtherConvenience = request.getParameter("description_other_convenience");
            double poolArea = Double.parseDouble(request.getParameter("pool_area"));
            int numOfFloor = Integer.parseInt(request.getParameter("number_of_floors"));
            facility = new Villa(id, name, area, cost, maxPeople, rentalType, typeFacility, standardRoom, descriptionOtherConvenience,poolArea,numOfFloor);
        } else if(facilityType == 2) {
            String standardRoom = request.getParameter("standard_room");
            String descriptionOtherConvenience = request.getParameter("description_other_convenience");
            int numOfFloor = Integer.parseInt(request.getParameter("number_of_floors"));
            facility = new House(id, name, area, cost, maxPeople, rentalType, typeFacility, standardRoom, descriptionOtherConvenience,numOfFloor);
        } else {
            String facilityFree = request.getParameter("facility_free");
            facility = new Room(id, name, area, cost, maxPeople, rentalType, typeFacility, facilityFree);
        }
        Map<String, String> errMap = facilityService.editFacility(facility);
        if (errMap.size() > 0) {
            for (String str : errMap.keySet()) {
                request.setAttribute(str, errMap.get(str));
            }
            showFormEditService(request, response);
        } else {
            request.setAttribute("message", "Successfully added customer: " + name);
            showListFacility(request, response);
        }
    }

    private void addNewService(HttpServletRequest request, HttpServletResponse response) {
        Facility facility;
        String name = request.getParameter("name");
        double area = Double.parseDouble(request.getParameter("area"));
        int cost = Integer.parseInt(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("max_people"));
        int rentType = Integer.parseInt(request.getParameter("rent_type"));
        RentalType rentalType = typeFacilityService.getRentalTypeById(rentType);
        int facilityType = Integer.parseInt(request.getParameter("service_type"));
        TypeFacility typeFacility = typeFacilityService.getTypeOfFacilityById(facilityType);
        if(facilityType==1) {
            String standardRoom = request.getParameter("standard_room");
            String descriptionOtherConvenience = request.getParameter("description_other_convenience");
            double poolArea = Double.parseDouble(request.getParameter("pool_area"));
            int numOfFloor;
            try {
                numOfFloor = Integer.parseInt(request.getParameter("number_of_floors"));
            } catch (Exception e) {
                numOfFloor = 0;
            }
            facility = new Villa(name, area, cost, maxPeople, rentalType, typeFacility, standardRoom, descriptionOtherConvenience,poolArea,numOfFloor);
        } else if(facilityType == 2) {
            String standardRoom = request.getParameter("standard_room");
            String descriptionOtherConvenience = request.getParameter("description_other_convenience");
            int numOfFloor;
            try {
                numOfFloor = Integer.parseInt(request.getParameter("number_of_floors"));
            } catch (Exception e) {
                numOfFloor = 0;
            }
            facility = new House(name, area, cost, maxPeople, rentalType, typeFacility, standardRoom, descriptionOtherConvenience,numOfFloor);
        } else {
            String facilityFree = request.getParameter("facility_free");
            facility = new Room(name, area, cost, maxPeople, rentalType, typeFacility, facilityFree);
        }
        Map<String, String> errMap = facilityService.addNewFacility(facility);
        if (errMap.size() > 0) {
            for (String str : errMap.keySet()) {
                request.setAttribute(str, errMap.get(str));
            }
        } else {
            request.setAttribute("message", "Successfully added service: " + name);
        }
        showFormAddService(request, response);
    }

    private void showListFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilities = facilityService.listFacility();
        request.setAttribute("facilities", facilities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAddService(HttpServletRequest request, HttpServletResponse response) {
        List<TypeFacility> typeFacilityList = typeFacilityService.listTypeOfFacility();
        request.setAttribute("typeFacilityList", typeFacilityList);
        List<RentalType> rentalTypeList = typeFacilityService.listRentalType();
        request.setAttribute("rentalTypeList", rentalTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/add.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showFormEditService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.findFacilityById(id);
        request.setAttribute("facility", facility);
        List<TypeFacility> typeFacilityList = typeFacilityService.listTypeOfFacility();
        request.setAttribute("typeFacilityList", typeFacilityList);
        List<RentalType> rentalTypeList = typeFacilityService.listRentalType();
        request.setAttribute("rentalTypeList", rentalTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
