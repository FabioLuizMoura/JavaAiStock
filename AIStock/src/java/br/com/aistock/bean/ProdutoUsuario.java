package br.com.aistock.bean;

public class ProdutoUsuario {
    
    private int idUsuPro;
    private int idUsuario;
    private int idProduto;        
    private Produto pro;
    private int qtd;
    private double preco;
    private Usuario usu;

    public ProdutoUsuario(int idUsuPro, Usuario usu) {
        this.idUsuPro = idUsuPro;
        this.usu = usu;
    }
    
    public ProdutoUsuario(int idUsuPro, int idUsu) {
        this.idUsuPro = idUsuPro;
        this.idUsuario = idUsu;
    }
    
    public ProdutoUsuario(int idUsu) {
        this.idUsuario = idUsu;
    }
    
    public ProdutoUsuario(int idUsuPro, int idProduto,int idUsuario, int qtd, double preco) {
        this.idUsuPro = idUsuPro;
        this.idProduto = idProduto;
        this.idUsuario = idUsuario;
        this.qtd = qtd;
        this.preco = preco;
    }

    public ProdutoUsuario(int idUsuPro, int idProduto, int qtd, double preco) {
        this.idUsuPro = idUsuPro;
        this.idProduto = idProduto;
        this.qtd = qtd;
        this.preco = preco;
    }
    
    public ProdutoUsuario(int idUsuPro, int idProduto, int qtd, double preco, int idUsuario) {
        this.idUsuPro = idUsuPro;
        this.idProduto = idProduto;
        this.qtd = qtd;
        this.preco = preco;
        this.idUsuario = idUsuario;
    }

    public int getIdUsuPro() {
        return idUsuPro;
    }

    public void setIdUsuPro(int idUsuPro) {
        this.idUsuPro = idUsuPro;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public int getIdUSuario() {
        return usu.getId();
    }

    public Usuario getUsuario() {
        return usu;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public Produto getPro() {
        return pro;
    }

    public void setPro(Produto pro) {
        this.pro = pro;
    }

    
     public double getPreco() {
        return preco;
    }

    public void setPreco(double pre) {
        this.preco = pre;
    }
    
     public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }
}
