/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.farmacia.model;

import com.farmacia.entity.Producto;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class ProductoModelImpl implements ProductoModel{
    private SessionFactory sf;
    private Session s;
    
   @Override
    public List<Producto> obtenerRegistros() {
        try{
           sf =new Configuration().configure().buildSessionFactory();
           s= sf.openSession();
           List<Producto>lista=s.createCriteria(Producto.class).list();
           s.close();
           
           sf.close();
           return lista;
        }catch(HibernateException e){
            System.out.println("Error al recuperar los registros:"+e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarRegistro(Producto Producto) {
       try{
       sf=new Configuration().configure().buildSessionFactory();
       s=sf.openSession();
       s.beginTransaction();
       s.update(Producto);
       s.getTransaction().commit();
       s.close();
       sf.close();
      
       }catch(Exception e){
            System.out.println("Error al actualizar el registro:"+e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Producto Producto) {
       try{
       sf=new Configuration().configure().buildSessionFactory();
       s=sf.openSession();
       s.beginTransaction();
       s.delete(Producto);
       s.getTransaction().commit();
       s.close();
       sf.close();
       }catch(Exception e){
            System.out.println("Error al eliminar el registro:"+e.getMessage());
        }
    }

    @Override
    public void crearRegistro(Producto Producto) {
       try{
       sf=new Configuration().configure().buildSessionFactory();
       s=sf.openSession();
       s.beginTransaction();
       s.save(Producto);
       s.getTransaction().commit();
       s.close();
       sf.close();
      
       }catch(HibernateException e){
            System.out.println("Error al crear el registro:"+e.getMessage());
        }
    }

    @Override
    public Producto obtenerRegistro(int idProducto) {
        try{
       sf=new Configuration().configure().buildSessionFactory();
       s=sf.openSession();
       Producto Producto=(Producto)s.get(Producto.class, idProducto);
      
       s.close();
       sf.close();
      return Producto;
       }catch(Exception e){
            System.out.println("Error al recuperar el registro:"+e.getMessage());
        } 
        return null;
    }
    public static void main(String[] args) {
    ProductoModel c =new ProductoModelImpl();
    Producto u=new Producto();
    
    u.setNombreproducto("flor");
    u.setDescripcion("Tenacidad");
    u.setPreciounidad(50);
    u.setStock(50);
    
 
    c.crearRegistro(u);
    

    }
}
