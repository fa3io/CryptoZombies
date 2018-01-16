//Versão do compilador usado
pragma solidity ^0.4.19;

//Declaração de um contrato
contract ZombieFactory{

	//Variavel de estado do contrato fica armazenada na blockchain
	uint dnaDigits = 16;
	
	//Inserindo operações
	uint dnaModulus = 10 ** dnaDigits;

	//Estruturas nos permte criar tipos de dados mais complexos para nossos contratos
	struct Zombie{
        string name;
        uint dna;
    }
	
	//Array dinamico por ser publico outros contratos podem chama-lo mas não altera-lo
	Zombie[] public zombies;

	//Função de criação de zombies
	//parametros de função por convenção inicia-se com ( _ ) para diferenciar de variaveis globais
	function createZombie(string _name, uint _dna){
		zombies.push(Zombie(_name,_dna));
	}
}