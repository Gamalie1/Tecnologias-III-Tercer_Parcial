/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.farmacia.service;

import com.farmacia.entity.Producto;
import com.farmacia.model.ProductoModel;
import com.farmacia.model.ProductoModelImpl;
import java.util.List;

/**
 *
 * @author labso08
 */
public class ProductoServiceImpl implements ProductoService{
   ProductoModel model =new ProductoModelImpl();
    
    @Override
    public List<Producto> obtenerRegistros() {
        return model.obtenerRegistros();
    }

    @Override
    public void actualizarRegistro(Producto Producto) {
       model.actualizarRegistro(Producto);
    }

    @Override
    public void eliminarRegistro(Producto Producto) {
       model.eliminarRegistro(Producto);
    }

    @Override
    public void crearRegistro(Producto Producto) {
        model.crearRegistro(Producto);
    }

    @Override
    public Producto obtenerRegistro(int idProducto) {
     return model.obtenerRegistro(idProducto);
    } 
}
