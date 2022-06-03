/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.farmacia.controller;

import com.farmacia.entity.Producto;
import com.farmacia.service.ProductoService;
import com.farmacia.service.ProductoServiceImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author labso08
 */
public class ProductoServletController extends HttpServlet {

    ProductoService service;

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
            case "Login":
                System.out.println("Creando...");
                login(request, response);
                break;
            
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("");
        doGet(request, response);
    }

    private void Listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/ListarProducto.jsp");
        this.service = new ProductoServiceImpl();
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void crearFormulario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/crearFormularioProducto.jsp");
        dispatcher.forward(request, response);

    }

    private void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/Login.jsp");
        dispatcher.forward(request, response);

    }

  

    private void actualizarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Producto producto = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("producto", producto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/actualizarFormularioProducto.jsp");
        dispatcher.forward(request, response);

    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto producto = new Producto();
        producto.setNombreproducto(request.getParameter("nombre"));
        producto.setDescripcion(request.getParameter("descripcion"));
        producto.setPreciounidad(Integer.parseInt(request.getParameter("precio")));
        producto.setStock(Integer.parseInt(request.getParameter("stok")));
        service = new ProductoServiceImpl();
        service.crearRegistro(producto);
        System.out.println("INGRESADO: " + producto.getNombreproducto());

        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/crearFormularioProducto.jsp");
        dispatcher.forward(request, response);
        this.service = new ProductoServiceImpl();
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getParameter("id"));
        Producto Producto = new Producto(Integer.parseInt(request.getParameter("id")));
        Producto.setNombreproducto(request.getParameter("nombreproducto"));
        Producto.setDescripcion(request.getParameter("descripcion"));
        Producto.setPreciounidad(Integer.parseInt(request.getParameter("preciounidad")));
        Producto.setStock(Integer.parseInt(request.getParameter("stock")));
        service = new ProductoServiceImpl();
        service.actualizarRegistro(Producto);
        System.out.println("INGRESADO: " + Producto.getNombreproducto());

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("ProductoServletController?action=listar");
        dispatcher.forward(request, response);
        this.service = new ProductoServiceImpl();
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("Pages/ListarProducto.jsp");
        this.service = new ProductoServiceImpl();
        Producto Producto = new Producto();
        Producto = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("id")));
        service.eliminarRegistro(Producto);
        System.out.println("eliminando");
        List<Producto> ListaProducto = this.service.obtenerRegistros();
        request.setAttribute("ListaProducto", ListaProducto);
        dispatcher.forward(request, response);
    }
}
