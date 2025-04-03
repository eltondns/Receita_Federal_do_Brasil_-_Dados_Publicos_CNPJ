# PostgreSQL Docker Project

Este projeto utiliza o Docker para criar e gerenciar uma instância do PostgreSQL 14.2. Abaixo estão as instruções sobre como iniciar a instância e informações sobre os arquivos incluídos no projeto.

## Estrutura do Projeto

O projeto contém os seguintes arquivos:

- **docker-compose.yml**: Define os serviços, redes e volumes necessários para a execução do PostgreSQL. Especifica a imagem do PostgreSQL 14.2, variáveis de ambiente, portas expostas e volumes para persistência de dados.

- **init.sql**: Contém comandos SQL que serão executados na inicialização do banco de dados. Isso pode incluir a criação de tabelas, inserção de dados iniciais ou configuração de esquemas.

- **.env**: Armazena variáveis de ambiente utilizadas pelo `docker-compose.yml`. Inclui configurações como a senha do usuário do banco de dados, nome do banco de dados e outros parâmetros de configuração.

## Como Iniciar a Instância do PostgreSQL

1. **Certifique-se de que o Docker e o Docker Compose estão instalados** em sua máquina.

2. **Clone este repositório** ou baixe os arquivos para o seu sistema local.

3. **Configure o arquivo `.env`** com as variáveis de ambiente necessárias. Um exemplo de configuração pode incluir:
   ```
   POSTGRES_USER=seu_usuario
   POSTGRES_PASSWORD=sua_senha
   POSTGRES_DB=seu_banco_de_dados
   ```

4. **Inicie a instância do PostgreSQL** executando o seguinte comando no diretório do projeto:
   ```
   docker-compose up -d
   ```

5. **Acesse o banco de dados** usando um cliente PostgreSQL ou através da linha de comando. Você pode usar as credenciais definidas no arquivo `.env`.

6. **Verifique os logs** do contêiner para garantir que o PostgreSQL foi iniciado corretamente:
   ```
   docker-compose logs
   ```

## Considerações Finais

- Para parar a instância do PostgreSQL, execute:
  ```
  docker-compose down
  ```

- O arquivo `init.sql` será executado automaticamente na primeira inicialização do banco de dados, permitindo que você configure seu esquema inicial.

Sinta-se à vontade para modificar os arquivos conforme necessário para atender às suas necessidades específicas.