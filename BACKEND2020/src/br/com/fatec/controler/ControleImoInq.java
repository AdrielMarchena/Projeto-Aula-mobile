package br.com.fatec.controler;

import br.com.fatec.bean.Imovel;
import br.com.fatec.bean.Inquilino;
import br.com.fatec.bean.InquilinoImovel;
import br.com.fatec.db.DaoInquilinoImovel;
import java.sql.SQLException;
import java.util.List;

public class ControleImoInq {
    
    public static ControleImovel contImo;
    public static ControleInquilino  contInq;
    public static DaoInquilinoImovel daoInqImo;
    
    public InquilinoImovel inserirInquilinoImovel(InquilinoImovel inqImo) throws SQLException, ClassNotFoundException {
        daoInqImo = new DaoInquilinoImovel();
        return daoInqImo.inseri(inqImo);
    }
 
    public InquilinoImovel excluirInquilinoImovel(InquilinoImovel inqImo) throws SQLException, ClassNotFoundException {
        daoInqImo = new DaoInquilinoImovel();
        return daoInqImo.exclui(inqImo);
    }

    public InquilinoImovel alterarInquilinoImovel(InquilinoImovel inqImo) throws SQLException, ClassNotFoundException {
        daoInqImo = new DaoInquilinoImovel();
        return daoInqImo.altera(inqImo);
    }

    public InquilinoImovel buscarInquilinoImovelPorId(InquilinoImovel inqImo) throws SQLException, ClassNotFoundException {

        daoInqImo = new DaoInquilinoImovel();
        inqImo = daoInqImo.busca(inqImo);
        
        contImo = new ControleImovel();
        contInq = new ControleInquilino();

        Imovel imo = new Imovel(inqImo.getIdImovel(),"","",0);
        Inquilino inq = new Inquilino(inqImo.getIdinquilino(),"");
        
        inqImo.setImovel(contImo.buscaImovelPorId(imo));
        inqImo.setInquilino(contInq.buscaInquilinoPorId(inq));

        return inqImo;
    }


    public List<InquilinoImovel> listarInquilinoImovel(InquilinoImovel inqImo) throws SQLException, ClassNotFoundException {

        contImo = new ControleImovel();
        contInq = new ControleInquilino();

        daoInqImo = new DaoInquilinoImovel();
        List<InquilinoImovel> listInqImo = daoInqImo.lista(inqImo);

        for (InquilinoImovel listaIM : listInqImo) {
            Imovel imo = new Imovel(listaIM.getIdImovel(),"","",0);
            Inquilino inq = new Inquilino(listaIM.getIdinquilino(),"");
            listaIM.setImovel(contImo.buscaImovelPorId(imo));
            listaIM.setInquilino(contInq.buscaInquilinoPorId(inq));
        }

        return listInqImo;
    }
}
