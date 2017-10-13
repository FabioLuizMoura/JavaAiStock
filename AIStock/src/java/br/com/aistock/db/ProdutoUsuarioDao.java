package br.com.aistock.db;

import br.com.aistock.bean.ProdutoUsuario;
import br.com.aistock.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdutoUsuarioDao {
    
    private final Connection c;
    
    public ProdutoUsuarioDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public ProdutoUsuario altera(ProdutoUsuario proUsu) throws SQLException{
        String sql = "UPDATE produto_usuario SET qtd = ?, preco = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,proUsu.getQtd());
        stmt.setDouble(2,proUsu.getPreco());
        stmt.setInt(3,proUsu.getIdUsuPro());

        // executa
        stmt.execute();
        stmt.close();
        return proUsu;
    }

    public ProdutoUsuario exclui(ProdutoUsuario proUsu) throws SQLException{
        String sql = "delete from produto_usuario WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,proUsu.getIdUsuPro());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return proUsu;
    }


    public ProdutoUsuario inseri(ProdutoUsuario proUsu) throws SQLException, Exception{
        String sql = "insert into produto_usuario" + " (produtoId, usuarioId, qtd, preco)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,proUsu.getIdProduto());
        stmt.setInt(2,proUsu.getIdUsuario());
        stmt.setInt(3,proUsu.getQtd());
        stmt.setDouble(4,proUsu.getPreco());

        // executa
        stmt.execute();
        stmt.close();
        return proUsu;
    }
    
    public ProdutoUsuario busca(ProdutoUsuario proUsu) throws SQLException{
        String sql = "select id, produtoId, usuarioId, qtd, preco from produto_usuario WHERE id = ? and usuarioId = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,proUsu.getIdUsuPro());
            stmt.setInt(2,proUsu.getIdUsuario());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                proUsu.setIdUsuPro(rs.getInt(1));
                proUsu.setIdProduto(rs.getInt(2));
                proUsu.setIdUsuario(rs.getInt(3));
                proUsu.setQtd(rs.getInt(4));
                proUsu.setPreco(rs.getDouble(5));
                // adiciona o usu à lista de usus
            }
        return proUsu;
    }
    
    public List<ProdutoUsuario> lista(ProdutoUsuario proUsu) throws SQLException{
        List<ProdutoUsuario> proUsus = new ArrayList<>();
        
        String sql = "select * from produto_usuario where usuarioId = ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, proUsu.getIdUsuario());
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    // criando o objeto Usuario
                    ProdutoUsuario usu = new ProdutoUsuario(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getInt(3),
                            rs.getInt(5),
                            rs.getDouble(4)
                    );
                    // adiciona o usu à lista de usus
                    proUsus.add(usu);
                }
            }
        }
        return proUsus;
    }
    
}
