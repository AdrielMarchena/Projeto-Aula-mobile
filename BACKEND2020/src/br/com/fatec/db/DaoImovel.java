/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.db;

import br.com.fatec.bean.Imovel;
import java.sql.SQLException;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adriel M
 */
public class DaoImovel {
    
    private final Connection c;
    
    public DaoImovel() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Imovel busca(Imovel log) throws SQLException{
        String sql = "select * from imovel where id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
        
        stmt.setInt(1,log.getId());
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {
                // criando o objeto Usuario
                log.setId(rs.getInt(1));
                log.setEndereco(rs.getString(2));
                log.setProprietario(rs.getString(3));
                log.setValorAluguel(rs.getDouble(4));
                // adiciona o usu à lista de usus
            }
        stmt.close();
        c.close();
    
        return log;
    }
    
    
    public Imovel altera(Imovel log) throws SQLException{
        String sql = "UPDATE imovel SET endereco = ?, proprietario = ?,valorAluguel = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,log.getEndereco());
        stmt.setString(2,log.getProprietario());
        stmt.setDouble(3, log.getValorAluguel());
        stmt.setInt(4,log.getId());
        

        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return log;
    }
    
    public Imovel exclui(Imovel log) throws SQLException{
        String sql = "delete from imovel WHERE id = ?";
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
    
    public Imovel inseri(Imovel log) throws SQLException{
        String sql = "insert into imovel" + " (endereco, proprietario,valorAluguel)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,log.getEndereco());
        stmt.setString(2,log.getProprietario());
        stmt.setDouble(3, log.getValorAluguel());

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
    
    public List<Imovel> lista(Imovel logEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Imovel> logs = new ArrayList<>();
        
        String sql = "select * from imovel where proprietario like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + logEnt.getProprietario()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Logradouro
            Imovel log = new Imovel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
            // adiciona o usu à lista de logs
            logs.add(log);
        }
        
        rs.close();
        stmt.close();
        return logs;
        
    }
    public List<Imovel> listaTodos() throws SQLException{
         // usus: array armazena a lista de registros

        List<Imovel> logs = new ArrayList<>();
        
        String sql = "select * from imovel";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Logradouro
            Imovel log = new Imovel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
            // adiciona o usu à lista de logs
            logs.add(log);
        }
        
        rs.close();
        stmt.close();
        return logs;
        
    }
}
