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
public class Inquilino {
    
      private int id;
      private String nome;
      
      public Inquilino(int id, String nome){
           this.id = id;
           this.nome = nome;
      }

    public int getId() {
        return id;
    }

    public void setId(int idInquilino) {
        this.id = idInquilino;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
      
    @Override
    public String toString(){
        return "Inquilino{" + "idInquilino=" + this.id + ", nomeInquilino=" + this.nome + "}";
    }
    
}
