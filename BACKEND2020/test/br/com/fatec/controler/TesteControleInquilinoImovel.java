package br.com.fatec.controler;

import br.com.fatec.bean.InquilinoImovel;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class TesteControleInquilinoImovel {
    
    public TesteControleInquilinoImovel() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}

    @Test
    public void inserir() throws SQLException, ClassNotFoundException {
          InquilinoImovel inqImo = new InquilinoImovel(1,1,1,"TESTE RELACAO");
          ControleImoInq contInqImo = new ControleImoInq();
          inqImo = contInqImo.inserirInquilinoImovel(inqImo);
          assertEquals("TESTE RELACAO", inqImo.getObs());
    }

    @Test
    public void busca() throws SQLException, ClassNotFoundException {
          InquilinoImovel inqImo = new InquilinoImovel(1,0,0,"");
          ControleImoInq contInqImo = new ControleImoInq();
          inqImo = contInqImo.buscarInquilinoImovelPorId(inqImo);
          
          System.out.println("IMPRESSAO TESTE DE BUSCA " + inqImo.toString());
          
          assertEquals(1, inqImo.getIdImoInq());
    }

    @Test
    public void lista() throws SQLException, ClassNotFoundException {
          InquilinoImovel inqImo = new InquilinoImovel(0,0,0,"RELACAO");
          ControleImoInq contInqImo = new ControleImoInq();
          List<InquilinoImovel> listaIM = new ArrayList();
          listaIM = contInqImo.listarInquilinoImovel(inqImo);

          System.out.println("IMPRESSAO TESTE DE LISTA " + listaIM.get(0).toString());


          assertEquals("RELACAO", listaIM.get(0).getObs());
    }
}
