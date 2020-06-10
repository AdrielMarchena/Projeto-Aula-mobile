/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Imovel;
import br.com.fatec.db.DaoImovel;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adriel M
 */
public class ControleImovel {
    
    public static DaoImovel daoLog;

    public Imovel buscaImovelPorId (Imovel log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoImovel();
        return daoLog.busca(log);
    }

    public Imovel inseriImovel (Imovel log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoImovel();
        return daoLog.inseri(log);
    }

    public Imovel alteraImovel (Imovel log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoImovel();
        return daoLog.altera(log);
    }

    public Imovel excluiImovel (Imovel log) throws SQLException, ClassNotFoundException {
        daoLog = new DaoImovel();
        return daoLog.exclui(log);
    }

    public List<Imovel> listaImovel (Imovel log) throws SQLException, ClassNotFoundException {
        List<Imovel> listLogs = new ArrayList();
        daoLog = new DaoImovel();
        listLogs = daoLog.lista(log);
        return listLogs;
    }
    
    public List<Imovel> listaTodos () throws SQLException, ClassNotFoundException {
        List<Imovel> listLogs = new ArrayList();
        daoLog = new DaoImovel();
        listLogs = daoLog.listaTodos();
        return listLogs;
    }
    
}
