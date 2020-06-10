/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Inquilino;
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
public class TesteControlerInquilino {
    public TesteControlerInquilino() {
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
          Inquilino log = new Inquilino(0,"João");
          ControleInquilino contLog = new ControleInquilino();
          log = contLog.inseriInquilino(log);
          assertEquals("João", log.getNome());
    }

    @Test
    public void excluir() throws SQLException, ClassNotFoundException {
          Inquilino log = new Inquilino(0,"João");
          ControleInquilino contLog = new ControleInquilino();
          log = contLog.excluiInquilino(log);
          assertEquals(0, log.getId());
    }

    @Test
    public void buscar() throws SQLException, ClassNotFoundException {
          Inquilino log = new Inquilino(0,"José");
          ControleInquilino contLog = new ControleInquilino();
          log = contLog.buscaInquilinoPorId(log);
          assertEquals("José", log.getNome());
    }

    @Test
    public void alterar() throws SQLException, ClassNotFoundException {
          Inquilino log = new Inquilino(2,"NOME ALTERADO");
          ControleInquilino contLog = new ControleInquilino();
          log = contLog.alteraInquilino(log);
          assertEquals("NOME ALTERADO", log.getNome());
    }
}
