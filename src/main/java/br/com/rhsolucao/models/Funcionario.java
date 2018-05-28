package br.com.rhsolucao.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Funcionario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	private String cargo;
	private String departamento;
	private Calendar dataContratacao;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public Calendar getDataContratacao() {
		return dataContratacao;
	}

	public void setDataContratacao(Calendar dataContratacao) {
		this.dataContratacao = dataContratacao;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "\n" + "NOME: " + this.getNome() + "\n" + "CARGO: " + this.getCargo() + "\n" + "DEPARTAMENTO: "
				+ this.getDepartamento() + "\n";
	}
}
