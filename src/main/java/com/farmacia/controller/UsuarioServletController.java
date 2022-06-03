/*
 Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea un servlet el que nos ayudara al control de las acciones que se tomen.
 */
package com.farmacia.controller;

import com.farmacia.entity.Usuario;
import com.farmacia.service.UsuarioService;
import com.farmacia.service.UsuarioServiceImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import org.hibernate.Session;

/**
 *
 * @author Asus
 */
public class UsuarioServletController extends HttpServlet {

    UsuarioService service;
  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Action:" + action);
        switch (action) {
            case "listar":
                System.out.println("Listando...");
                Listar(request, response);
                break;
            case "crear":
                System.out.println("Creando...");
                crear(request, response);
                break;
            case "crearForm":
                System.out.println("Creando...");
                crearFormulario(request, response);
                break;
            case "crearBD":
                crear(request, response);
                break;
            case "list":
                System.out.println("Creando...");
                Listar(request, response);
                break;
            case "actualizar":
                System.out.println("Creando...");
                actualizar(request, response);
                break;
            case "actualizarForm":
                System.out.println("Creando...");
                actualizarForm(request, response);
                break;
            case "eliminar":
                System.out.println("Creando...");
                Eliminar(request, response);
                break;
            

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("");
        doGet(request, response);
        try {

        } catch (Exception e) {
            // TODO Auto-generated catch block

        }

    }

    private void Listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/list.jsp");
        this.service = new UsuarioServiceImpl();
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    private void crearFormulario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/createForm.jsp");
        dispatcher.forward(request, response);

    }

    private void actualizarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Usuario usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("usuario", usuario);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/actualizarForm.jsp");
        dispatcher.forward(request, response);

    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario();
        usuario.setNombreusuario(request.getParameter("nombreusuario"));
        usuario.setContrasena(request.getParameter("contrasena"));
        usuario.setNombre(request.getParameter("nombre"));
        usuario.setSexo(request.getParameter("sexo"));
        usuario.setEdad(Integer.parseInt(request.getParameter("edad")));
        service = new UsuarioServiceImpl();
        service.crearRegistro(usuario);
        System.out.println("INGRESADO: " + usuario.getNombre());

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/createForm.jsp");
        dispatcher.forward(request, response);
        this.service = new UsuarioServiceImpl();
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    private void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getParameter("id"));
        Usuario usuario = new Usuario(Integer.parseInt(request.getParameter("id")));
        usuario.setNombreusuario(request.getParameter("nombreusuario"));
        usuario.setContrasena(request.getParameter("contrasena"));
        usuario.setNombre(request.getParameter("nombre"));
        usuario.setSexo(request.getParameter("sexo"));
        usuario.setEdad(Integer.parseInt(request.getParameter("edad")));
        service = new UsuarioServiceImpl();
        service.actualizarRegistro(usuario);
        System.out.println("INGRESADO: " + usuario.getNombre());

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("UsuarioServletController?action=listar");
        dispatcher.forward(request, response);
        this.service = new UsuarioServiceImpl();
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/list.jsp");
        this.service = new UsuarioServiceImpl();
        Usuario usuario = new Usuario();
        usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("id")));
        service.eliminarRegistro(usuario);
        System.out.println("eliminando");
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

  

}
