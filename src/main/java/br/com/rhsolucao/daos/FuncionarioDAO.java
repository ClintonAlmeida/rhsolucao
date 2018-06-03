package br.com.rhsolucao.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.rhsolucao.models.Funcionario;

@Repository
@Transactional
public class FuncionarioDAO {

	@PersistenceContext
	private EntityManager manager;

	public void gravar(Funcionario funcionario) {
		manager.persist(funcionario);
	}

	public List<Funcionario> listar() {
		return manager.createQuery("select f from Funcionario f", Funcionario.class).getResultList();
	}

}
