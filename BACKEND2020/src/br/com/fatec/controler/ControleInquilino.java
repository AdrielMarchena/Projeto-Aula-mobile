/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Inquilino;
import br.com.fatec.db.DaoInquilino;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adriel M
 */
public class ControleInquilino {
    public static DaoInquilino daoLog;

    public Inquilino buscaInquilinoPorId (Inquilino log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoInquilino();
        return daoLog.busca(log);
    }

    public Inquilino inseriInquilino (Inquilino log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoInquilino();
        return daoLog.inseri(log);
    }

    public Inquilino alteraInquilino (Inquilino log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoInquilino();
        return daoLog.altera(log);
    }

    public Inquilino excluiInquilino (Inquilino log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoInquilino();
        return daoLog.exclui(log);
    }

    public List<Inquilino> listaInquilino (Inquilino log) throws SQLException, ClassNotFoundException {
        List<Inquilino> listLogs = new ArrayList();
        daoLog = new DaoInquilino();
        listLogs = daoLog.lista(log);
        return listLogs;
    }
    
    public List<Inquilino> listaTodos () throws SQLException, ClassNotFoundException {
        List<Inquilino> listLogs = new ArrayList();
        daoLog = new DaoInquilino();
        listLogs = daoLog.listaTodos();
        return listLogs;
    }
}
