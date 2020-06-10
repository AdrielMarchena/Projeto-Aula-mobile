/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Imovel;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author Adriel M
 */
public class TesteControlerImovel {
    public TesteControlerImovel() {
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
          Imovel log = new Imovel(0,"Rua Teste Generica 43","Proprietario TESTE",500);
          ControleImovel contLog = new ControleImovel();
          log = contLog.inseriImovel(log);
          assertEquals("Proprietario TESTE", log.getProprietario());
    }

    @Test
    public void excluir() throws SQLException, ClassNotFoundException {
          Imovel log = new Imovel(4,"","",500);
          ControleImovel contLog = new ControleImovel();
          log = contLog.excluiImovel(log);
          assertEquals(4, log.getId());
    }

    @Test
    public void buscar() throws SQLException, ClassNotFoundException {
          Imovel log = new Imovel(1,"","",500);
          ControleImovel contLog = new ControleImovel();
          log = contLog.buscaImovelPorId(log);
          assertEquals("José", log.getProprietario());
    }

    @Test
    public void alterar() throws SQLException, ClassNotFoundException {
          Imovel log = new Imovel(2,"RUA ALTERADA TESTE","TESTE DE ALTERACAO",100);
          ControleImovel contLog = new ControleImovel();
          log = contLog.alteraImovel(log);
          assertEquals("TESTE DE ALTERACAO", log.getProprietario());
    }
}
