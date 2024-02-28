// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ANAC {
    // aqui guardar a idade
    uint256 public idade = 18;
    
    // aqui guarda o endereço do dono do contrato
    address public owner;

    // aqui define a mudança de idade
    event IdadeAlterada(uint256 novaIdade);

    // somente o dono do contrato pode executar determinadas funções
    modifier onlyOwner() {
        require(msg.sender == owner, "somente o dono do contrato pode executar essa operacao");
        _;
    }

    // aqui define o dono do contrato
    constructor() {
        owner = msg.sender;
    }

    // função para definir a idade
    function setIdade(uint256 _idade) public onlyOwner {
        idade = _idade;
        emit IdadeAlterada(_idade);
    }

    // função para ter a idade
    function getIdade() public view returns (uint256) {
        return idade;
    }
}