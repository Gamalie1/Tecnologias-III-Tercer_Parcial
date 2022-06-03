/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.farmacia.model;

import com.farmacia.entity.Producto;
import java.util.List;

/**
 *
 * @author labso08
 */
public interface ProductoModel {
     public List<Producto> obtenerRegistros();
   
   public void actualizarRegistro(Producto Producto);
   
   public void eliminarRegistro(Producto Producto);
   
   public void crearRegistro(Producto Producto);
    
   public Producto obtenerRegistro (int idProducto);
}
