package br.com.aistock.controler;

import br.com.aistock.bean.Produto;
import br.com.aistock.bean.Usuario;
import br.com.aistock.bean.ProdutoUsuario;
import br.com.aistock.db.ProdutoUsuarioDao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdutoUsuarioControler {
    
    static UsuarioControler usucont = new UsuarioControler();
    static ProdutoControler procont = new ProdutoControler();

    public ProdutoUsuario inserirProdutoUsuario(ProdutoUsuario prousu) throws SQLException, ClassNotFoundException, Exception {
        ProdutoUsuarioDao prousuDao = new ProdutoUsuarioDao();
        prousu = prousuDao.inseri(prousu);
        return prousu;
    }
    
    public ProdutoUsuario buscarProdutoUsuario(ProdutoUsuario prousu) throws SQLException, ClassNotFoundException {
        ProdutoUsuarioDao prousuDao = new ProdutoUsuarioDao();
        prousu = prousuDao.busca(prousu);

        Produto usu = new Produto(prousu.getIdProduto(),"");
        usu = procont.buscarProduto(usu);
        prousu.setPro(usu);

        return prousu;
    }
    
    public ProdutoUsuario excluirProdutoUsuario(ProdutoUsuario prousu) throws SQLException, ClassNotFoundException {
        ProdutoUsuarioDao prousuDao = new ProdutoUsuarioDao();
        prousu = prousuDao.exclui(prousu);
        return prousu;
    }

    public ProdutoUsuario alterarProdutoUsuario(ProdutoUsuario prousu) throws SQLException, ClassNotFoundException {
        ProdutoUsuarioDao prousuDao = new ProdutoUsuarioDao();
        prousu = prousuDao.altera(prousu);
        return prousu;
    }

    public List<ProdutoUsuario> listarProdutoUsuario(ProdutoUsuario prousus) throws SQLException, ClassNotFoundException {

        ProdutoUsuarioDao prousuDao = new ProdutoUsuarioDao();
        List<ProdutoUsuario> prosusus = prousuDao.lista(prousus);
        
        for (ProdutoUsuario listaProdutoUsuario : prosusus) {
            Produto produto = new Produto(listaProdutoUsuario.getIdProduto(),"");
            listaProdutoUsuario.setPro(procont.buscarProduto(produto));
        }

        return prosusus;
    }
}
