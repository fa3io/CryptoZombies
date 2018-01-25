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
	//Funções privadas tem o modificador private no final da declaração e por convenção tem ( _ ) no inicio de seu nome
	//Apenas o proprio contrato acessa funções privadas
	function _createZombie(string _name, uint _dna) private {
		zombies.push(Zombie(_name,_dna));
	}
	
	//Funções de view não alteram nada no aplicativo apenas retornan algo
	//Funções puras (pure) que não acessão nenhum dado do aplicativo seu retorno depende apenas dos parametros
	//Função para gerar o DNA Randomico
	function _generateRandomDna(string _str) private view returns (uint) {
    //Ethereum possui a função hash keccak256 incorporada, que é uma versão do SHA3. Uma função hash basicamente mapeia uma string de entrada para um número hexadecimal aleatório de 256 bits.
		uint rand = uint(keccak256(_str));
        return rand % dnaModulus;
    }
}









