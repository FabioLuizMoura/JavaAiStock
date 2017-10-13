package br.com.aistock.controler;

import br.com.aistock.bean.Produto;
import br.com.aistock.db.ProdutoDao;
import java.sql.SQLException;
import java.util.List;

public class ProdutoControler {
    
    public boolean validaProduto(Produto pro){
        return pro != null;
    }
    
    public Produto inserirProduto(Produto pro) throws SQLException, ClassNotFoundException {
        ProdutoDao proDao = new ProdutoDao();
        pro = proDao.inseri(pro);
        return pro;
    }

    public Produto excluirProduto(Produto pro) throws SQLException, ClassNotFoundException {
        ProdutoDao proDao = new ProdutoDao();
        pro = proDao.exclui(pro);
        return pro;
    }

    public Produto buscarProduto(Produto pro) throws SQLException, ClassNotFoundException {
        ProdutoDao proDao = new ProdutoDao();
        pro = proDao.busca(pro);
        return pro;
    }
    
    public Produto buscarProduto(int id) throws SQLException, ClassNotFoundException {
        ProdutoDao proDao = new ProdutoDao();
        return proDao.busca(id);
    }

    public Produto alterarProduto(Produto pro) throws SQLException, ClassNotFoundException {
        ProdutoDao proDao = new ProdutoDao();
        pro = proDao.altera(pro);
        return pro;
    }
    
    public List<Produto> listarProduto(Produto pro) throws SQLException, ClassNotFoundException {
        List<Produto>  pros ;
        ProdutoDao proDao = new ProdutoDao();
        pros = proDao.lista(pro);
        return pros;
    }
}
