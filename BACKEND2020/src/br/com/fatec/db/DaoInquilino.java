/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.db;

import br.com.fatec.bean.Inquilino;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//create table db2020.inquilino (
//  id BIGINT NOT NULL AUTO_INCREMENT,
//  nome VARCHAR(255),
//  primary key (id));

/**
 *
 * @author Adriel M
 */
public class DaoInquilino {
    private final Connection c;
    
    public DaoInquilino() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Inquilino busca(Inquilino log) throws SQLException{
        String sql = "select * from inquilino where id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
        
        stmt.setInt(1,log.getId());
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {
                // criando o objeto Usuario
                log.setId(rs.getInt(1));
                log.setNome(rs.getString(2));

                // adiciona o usu à lista de usus
            }
        stmt.close();
        c.close();
    
        return log;
    }
    
    
    public Inquilino altera(Inquilino log) throws SQLException{
        String sql = "UPDATE inquilino SET nome = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,log.getNome());
        stmt.setInt(2,log.getId());

        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return log;
    }
    
    public Inquilino exclui(Inquilino log) throws SQLException{
        String sql = "delete from inquilino WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,log.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return log;
    }
    
    public Inquilino inseri(Inquilino log) throws SQLException{
        String sql = "insert into inquilino" + " (nome)" + " values (?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,log.getNome());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            log.setId(id);
        }
        stmt.close();
        c.close();
        return log;
    }
    
    public List<Inquilino> lista(Inquilino logEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Inquilino> logs = new ArrayList<>();
        
        String sql = "select * from inquilino where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + logEnt.getNome()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Logradouro
            Inquilino log = new Inquilino(rs.getInt(1),rs.getString(2));
            // adiciona o usu à lista de logs
            logs.add(log);
        }
        
        rs.close();
        stmt.close();
        return logs;
        
    }
    public List<Inquilino> listaTodos() throws SQLException{
         // usus: array armazena a lista de registros

        List<Inquilino> logs = new ArrayList<>();
        
        String sql = "select * from inquilino";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Logradouro
            Inquilino log = new Inquilino(rs.getInt(1),rs.getString(2));
            // adiciona o usu à lista de logs
            logs.add(log);
        }
        
        rs.close();
        stmt.close();
        return logs;
        
    }
    
    
}
