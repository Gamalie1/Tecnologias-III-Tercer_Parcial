/*
 Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea una interface donde se declaran nuestos metodos.
 */
package com.farmacia.model;



import com.farmacia.entity.Usuario;
import java.util.List;

/**
 *
 * @author labso09
 */
public interface UsuarioModel {
    
   public List<Usuario> obtenerRegistros();
   
   public void actualizarRegistro(Usuario usuario);
   
   public void eliminarRegistro(Usuario usuario);
   
   public void crearRegistro(Usuario usuario);
    
   public Usuario obtenerRegistro (int idUsuario);
   
   
}
