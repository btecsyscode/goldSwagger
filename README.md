# GoldSwagger 1.0

Realiza a geração de arquivos json das API's para aplicação em visualizadores swagger.

Para executar verifique um dos modos de uso:

## 1. Geração automática de todas as API's
	
	1.1 Descompacte o GoldSwagger no diretório plugins no BtecApiCore

	1.2 Execute o arquivo .bat (Windows) ou .sh (Linux)

	Todas as API's contidas no diretório plugins serão lidas

## 2. Geração automática unitária
	
	2.1 Descompacte o GoldSwagger no diretório raiz da API

	2.2 Execute o arquivo .bat (Windows) ou .sh (Linux)
	
	Somente a API do diretório atual será lida

## 3. Geração automática unitária parametrizada (Windows)
	
	3.1 Descompacte o GoldSwagger no diretório plugins no BtecApiCore

	3.2 Abra o CMD

	3.3 Execute o comando goldSwagger.bat %NOME_DA_API%
	
	Somente a API parametrizada será lida
	
## 4. Geração automática unitária parametrizada (Linux)
	
	3.1 Descompacte o GoldSwagger no diretório plugins no BtecApiCore

	3.2 Abra o BASH

	3.3 Execute o comando ./goldSwagger.sh %NOME_DA_API%
	
	Somente a API parametrizada será lida

Para que as API’s sejam agrupadas corretamente dentro do visualizador do swagger é necessário indicar o seu grupo comentando como no exemplo abaixo dentro do arquivo “/config/routes.php” da API.

## Exemplo:
@group->swagger NOME_DO_AGRUPAMENTO


Em todos os casos, será gerado para cada um dos diretórios lidos um arquivo .json num

formato de saída para swagger, encontrados no diretório "/webroot/documentation/yaml".

Caso haja duplicidade de arquivo, o .json anterior será movido para o endereço 

"/webroot/documentation/yaml/backup" com a data da última execução.


## FILES:

goldSwagger.bat -> Executável Windows
goldSwagger.sh -> Executável Linux
setup -> Configurações de execução compiladas
README