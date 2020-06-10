/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.bean;

/**
 *
 * @author Adriel M
 */
public class Imovel {
    
    private int id;
    private String endereco;
    private String proprietario;
    private double valorAluguel;
    
    public Imovel(int id,String endereco,String proprietario,double valorAluguel){
        this.id = id;
        this.endereco = endereco;
        this.proprietario = proprietario;
        this.valorAluguel = valorAluguel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getProprietario() {
        return proprietario;
    }

    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }

    public double getValorAluguel() {
        return valorAluguel;
    }

    public void setValorAluguel(double valorAluguel) {
        this.valorAluguel = valorAluguel;
    }
    
    
    @Override
    public String toString(){
        return "Imovel{" + "idImovel=" + this.id + ", endereco=" + this.endereco + ", proprietario=" + this.proprietario + "}";
    }
    
}
