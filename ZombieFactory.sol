//Vers�o do compilador usado
pragma solidity ^0.4.19;

//Declara��o de um contrato
contract ZombieFactory{

	//Variavel de estado do contrato fica armazenada na blockchain
	uint dnaDigits = 16;
	
	//Inserindo opera��es
	uint dnaModulus = 10 ** dnaDigits;

	//Estruturas nos permte criar tipos de dados mais complexos para nossos contratos
	struct Zombie{
        string name;
        uint dna;
    }


}