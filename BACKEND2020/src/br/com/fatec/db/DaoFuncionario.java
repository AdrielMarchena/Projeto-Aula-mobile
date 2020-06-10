/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.db;

import br.com.fatec.bean.Funcionario;

/**
 *
 * @author ProfAlexandre
 */
public class DaoFuncionario {
    
        public Funcionario busca (Funcionario fun) {
            fun.setIdFunc(15);
            fun.setNomeFunc("ANTONIO");
        return fun;
    }

    
}
