package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Database {
    /* CONEXÃO COM O BANCO */

    //parâmetros de conexão
    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost/organicbag";
    private String user = "root";
    private String password = "Sbbhqk#203";

    //Método de conexão
    private Connection connect() {
        Connection con = null;

        try {
            Class.forName(driver); //lê o driver do banco de dados
            con = DriverManager.getConnection(url, user, password);
            return con;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    /* CREATE */
    public void createUser(User user) {
        String create = "insert into usuarios values (?, ?, ?, ?, ?, ?)";

        try {
            Connection con = connect();

            //Preparar a query para executar no banco
            PreparedStatement pst = con.prepareStatement(create);

            pst.setLong(1, user.getCpf());
            pst.setString(2, user.getName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPhone());
            pst.setString(5, user.getProfile());
            pst.setString(6, user.getPassword());

            //executar a query
            pst.executeUpdate();

            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /* READ */
    public ArrayList<User> showUsers() {
        //objeto para acessar a classe User
        ArrayList<User> users = new ArrayList<User>();

        String read = "select * from usuarios";

        try {
            Connection con = connect();
            PreparedStatement pst = con.prepareStatement(read);
            ResultSet rs = pst.executeQuery(); //armazena o retorno do db temporariamente em um objeto

            while(rs.next()) {
                //variáveis de apoio que recebem os dados do banco
                long cpf = rs.getLong(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String phone = rs.getString(4);
                String profile = rs.getString(5);
                String password = rs.getString(6);

                //populando o ArrayList
                User u = new User(cpf, name, email, phone, profile, password);
                users.add(u);
            }

            con.close();

            return users;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}
