package br.com.aistock.db;

import br.com.aistock.util.ConexaoDB;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import br.com.aistock.bean.Produto;

public class ProdutoDao {

    private final Connection db;
    
    public ProdutoDao() throws SQLException, ClassNotFoundException{
        this.db = new ConexaoDB().getConnection();
    }
    
    public Produto busca(Produto pro) throws SQLException{
        String sql = "select * from produto WHERE id = ?";
        
        // seta os valores
        try ( // prepared statement para inserção
             PreparedStatement stmt = this.db.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,pro.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Produto
                pro.setId(rs.getInt(1));
                pro.setNome(rs.getString(2));
                // adiciona o pro à lista de pros
            }
        }
        return pro;
    }
    
    public Produto busca(int id) throws SQLException{
        String sql = "select * from produto WHERE id = ?";
        Produto pro = new Produto(0, "");
        // seta os valores
        try ( // prepared statement para inserção
             PreparedStatement stmt = this.db.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,id);
            // executa
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                // criando o objeto Produto
                pro.setId(rs.getInt(1));
                pro.setNome(rs.getString(2));
                // adiciona o pro à lista de pros
            }
        }
        return pro;
    }
    
    public Produto altera(Produto pro) throws SQLException{
        String sql = "UPDATE produto SET nome = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = db.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,pro.getNome());
        stmt.setInt(2,pro.getId());
        // executa
        stmt.execute();
        stmt.close();
        return pro;
    }

    public Produto exclui(Produto pro) throws SQLException{
        String sql = "delete from produto WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = db.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pro.getId());
        // executa
        stmt.execute();
        stmt.close();
        db.close();
        return pro;
    }
    
    public List<Produto> lista(Produto proEnt) throws SQLException{
         // pros: array armazena a lista de registros

        List<Produto> pros = new ArrayList<Produto>();
        
        String sql = "select * from produto where nome like ?";
        PreparedStatement stmt = this.db.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + proEnt.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Produto
            Produto pro = new Produto(
                rs.getInt(1),
                rs.getString(2)
            );
            // adiciona o pro à lista de pros
            pros.add(pro);
        }
        
        rs.close();
        stmt.close();
        return pros;
        
    }
    
    public Produto inseri(Produto pro) throws SQLException{
        String sql = "insert into produto" + " (nome)" + " values (?)";
    
        // preparando o statement para inserção
        PreparedStatement stmt = db.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,pro.getNome());

        // executa
        stmt.execute();
        stmt.close();
        return pro;
    }
    

}
