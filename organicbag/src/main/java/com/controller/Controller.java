package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Database;
import com.model.User;

import at.favre.lib.crypto.bcrypt.BCrypt;

@WebServlet(urlPatterns = {"/insert"})
public class Controller extends HttpServlet{
    private static final long serialVersionUID = 1L;
    Database data = new Database();
    User user = new User();
    
    public Controller() {
        super();
    }

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    } */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        if(action.equals("/insert")) {
            newUser(request, response);
        }
    }

    //Novo usuário
    protected void newUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //teste de recebimento dos dados do formulário
        /*System.out.println(request.getParameter("cpf"));
        System.out.println(request.getParameter("nome"));
        System.out.println(request.getParameter("email"));
        System.out.println(request.getParameter("tel"));
        System.out.println(request.getParameter("optradio"));
        System.out.println(request.getParameter("senha"));*/

        //verificar se usuário já existe
        cpfExists(request, response, Long.parseLong(request.getParameter("cpf")), request.getParameter("email"));

        //criar novo objeto usuário
        user.setCpf(Long.parseLong(request.getParameter("cpf")));
        user.setName(request.getParameter("nome"));
        user.setEmail(request.getParameter("email"));
        user.setPhone(request.getParameter("tel"));
        user.setProfile(request.getParameter("optradio"));

        String passwordHash = BCrypt.withDefaults().hashToString(12, request.getParameter("senha").toCharArray());
        user.setPassword(passwordHash);

        data.createUser(user);
    }

    //verificar se usuário já está cadastrado no banco
    protected void cpfExists(HttpServletRequest request, HttpServletResponse response, long cpf, String email) throws ServletException, IOException {
        ArrayList<User> users = data.showUsers();
        PrintWriter out = response.getWriter();

        //encaminhar lista de usuários

        for(int i = 0; i < users.size(); i++) {
            if(cpf == users.get(i).getCpf()) {
                out.println("<!doctype html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Usuário já existe!</title>");
                out.println("<link rel='stylesheet' href='css/cadastro.css'>");
                out.println("<link rel='icon' href='img/OrganicBagLogo.png'>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h2>Usuário já existe! <a href='index.html'>Tente logar aqui</a></h2>");
                out.println("</body>");
                out.println("</html>");
            }

            if(email.equals(users.get(i).getEmail())) {
            }
        }

    }

    //Ver todos os usuários
    protected void allUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
