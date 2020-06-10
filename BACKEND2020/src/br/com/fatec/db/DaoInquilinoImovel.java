package br.com.fatec.db;

import br.com.fatec.bean.InquilinoImovel;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DaoInquilinoImovel {
    
    private final Connection c;
    
    public DaoInquilinoImovel() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public InquilinoImovel altera(InquilinoImovel InqImo) throws SQLException{
        String sql = "UPDATE iq_imovel_inquilino SET iq_idImovel = ?, iq_idInquilino = ?, iq_obs = ? WHERE iq_id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,InqImo.getIdImovel());
        stmt.setInt(2,InqImo.getIdinquilino());
        stmt.setString(3,InqImo.getObs());
        stmt.setInt(4,InqImo.getIdImoInq());

        // executa
        stmt.execute();
        stmt.close();
        return InqImo;
    }

    public InquilinoImovel exclui(InquilinoImovel InqImo) throws SQLException{
        String sql = "delete from iq_imovel_inquilino WHERE iq_id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,InqImo.getIdImoInq());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return InqImo;
    }


    public InquilinoImovel inseri(InquilinoImovel InqImo) throws SQLException{

        String sql = "insert into iq_imovel_inquilino" + " (iq_idImovel,iq_idInquilino, iq_obs)" + " values (?,?,?)";

        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,InqImo.getIdImovel());
        stmt.setInt(2,InqImo.getIdinquilino());
        stmt.setString(3,InqImo.getObs());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            InqImo.setIdImoInq(id);
        }
        stmt.close();
        c.close();
        return InqImo;

    }
    
    public InquilinoImovel busca(InquilinoImovel InqImo) throws SQLException{
        String sql = "select * from iq_imovel_inquilino WHERE iq_id = ?";
        
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,InqImo.getIdImoInq());
            // executa
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Usuario
                InqImo.setIdImoInq(rs.getInt(1));
                InqImo.setIdImovel(rs.getInt(2));
                InqImo.setIdinquilino(rs.getInt(3));
                InqImo.setObs(rs.getString(4));
                // adiciona o usu à lista de usus
            }
        return InqImo;
    }

    public List<InquilinoImovel> lista(InquilinoImovel InqImo) throws SQLException{

        List<InquilinoImovel> inquiImovel = new ArrayList<>();
        
        String sql = "select * from iq_imovel_inquilino where iq_obs like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + InqImo.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            InquilinoImovel inquimovel = new InquilinoImovel(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4)
            );
            // adiciona o usu à lista de usus
            inquiImovel.add(inquimovel);
        }
        
        rs.close();
        stmt.close();
        return inquiImovel;
    }
}