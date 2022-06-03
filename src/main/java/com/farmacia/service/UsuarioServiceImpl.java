/*
 Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea una clase que implementa los metodos de la interface.
 */
package com.farmacia.service;




import com.farmacia.entity.Usuario;
import com.farmacia.model.UsuarioModel;
import com.farmacia.model.UsuarioModelImpl;
import java.util.List;

/**
 *
 * @author labso09
 */
public class UsuarioServiceImpl implements UsuarioService{
    UsuarioModel model =new UsuarioModelImpl();
    
    @Override
    public List<Usuario> obtenerRegistros() {
        return model.obtenerRegistros();
    }

    @Override
    public void actualizarRegistro(Usuario usuario) {
       model.actualizarRegistro(usuario);
    }

    @Override
    public void eliminarRegistro(Usuario usuario) {
       model.eliminarRegistro(usuario);
    }

    @Override
    public void crearRegistro(Usuario usuario) {
        model.crearRegistro(usuario);
    }

    @Override
    public Usuario obtenerRegistro(int idUsuario) {
     return model.obtenerRegistro(idUsuario);
    }
    
}
