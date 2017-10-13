/*
 create database aistock;

 create table aistock.usuario (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));

create table aistock.produto (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  primary key (id));

create table aistock.produto_usuario(
id INT NOT NULL AUTO_INCREMENT,
produtoId int not null,
usuarioId int not null,
qtd int,
preco double,
primary key (id),
foreign key (produtoId) references produto(id),
foreign key (usuarioId) references usuario(id)
);
insert into aistock.usuario values(0, 'admin', 'admin', '123', 'Ativo', 'ADM');
*/
package br.com.aistock.db;

import br.com.aistock.util.ConexaoDB;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import br.com.aistock.bean.Usuario;

public class UsuarioDao {

    private final Connection c;
    
    public UsuarioDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    
    public Usuario busca(Usuario usu) throws SQLException{
        String sql = "select * from usuario WHERE id = ?";
        
        // seta os valores
        try ( // prepared statement para inserção
             PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,usu.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                usu.setId(rs.getInt(1));
                usu.setNome(rs.getString(2));
                usu.setLogin(rs.getString(3));
                usu.setSenha(rs.getString(4));
                usu.setStatus(rs.getString(5));
                usu.setTipo(rs.getString(6));
                // adiciona o usu à lista de usus
            }
        }
        return usu;
    }
    
    
    
    public Usuario altera(Usuario usu) throws SQLException{
        String sql = "UPDATE usuario SET nome = ?, login = ?, senha = ?, status = ?, tipo = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,usu.getNome());
        stmt.setString(2,usu.getLogin());
        stmt.setString(3,usu.getSenha());
        stmt.setString(4,usu.getStatus());
        stmt.setString(5,usu.getTipo());
        stmt.setInt(6,usu.getId());

        // executa
        stmt.execute();
        stmt.close();
        return usu;
    }

    public Usuario exclui(Usuario usu) throws SQLException{
        String sql = "delete from usuario WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,usu.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return usu;
    }
    
    public Usuario validaLogin(Usuario usu) throws SQLException{
        // cria o select para ser executado no banco de dados 
        String sql = "select * from usuario WHERE login = ? AND senha = ?";
        // prepared statement para seleção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,usu.getLogin());
        stmt.setString(2,usu.getSenha());
        // executa
        ResultSet rs = stmt.executeQuery();
        // percorrendo o rs
        while (rs.next()) {      
            // criando o objeto Usuario
            usu.setId(rs.getInt(1));
            usu.setNome(rs.getString(2));
            usu.setLogin(rs.getString(3));
            usu.setSenha(rs.getString(4));
            usu.setStatus(rs.getString(5));
            usu.setTipo(rs.getString(6));
            // adiciona o usu à lista de usus
        }
        
        stmt.close();
        return usu;
    }
    
    public List<Usuario> lista(Usuario usuEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Usuario> usus = new ArrayList<Usuario>();
        
        String sql = "select * from usuario where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + usuEnt.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Usuario usu = new Usuario(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6)
            );
            // adiciona o usu à lista de usus
            usus.add(usu);
        }
        
        rs.close();
        stmt.close();
        return usus;
        
    }
    
    public Usuario inseri(Usuario usu) throws SQLException{
        String sql = "insert into usuario" + " (nome, login, senha, status, tipo)" + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,usu.getNome());
        stmt.setString(2,usu.getLogin());
        stmt.setString(3,usu.getSenha());
        stmt.setString(4,usu.getStatus());
        stmt.setString(5,usu.getTipo());

        // executa
        stmt.execute();
        stmt.close();
        return usu;
    }

}