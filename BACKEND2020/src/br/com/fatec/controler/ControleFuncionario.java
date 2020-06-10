/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.controler;

import br.com.fatec.bean.Funcionario;
import br.com.fatec.db.DaoFuncionario;

/**
 *
 * @author ProfAlexandre
 */
public class ControleFuncionario {
    
    public static DaoFuncionario daoFunc = new DaoFuncionario();

    public Funcionario buscaFuncionarioPorId (Funcionario func) {
        return daoFunc.busca(func);
    }

    
}
