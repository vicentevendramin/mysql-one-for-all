# One For All Project

No projeto One For All, planilhas não normalizadas, de um aplicativo de streaming de música, foram normalizadas e populadas em um banco de dados. Sendo possível executar queries com o intuito de encontrar as informações solicitadas.

### 💻 Tecnologias utilizadas:

- MySQL
- Docker

---

### 🐋 Início rápido com Docker Compose

``` Bash
  docker-compose up -d
  docker exec -it one_for_all bash
  npm install # instala as dependencias da aplicação
```
<details>
  <summary><strong>Mais informações</strong></summary>
  
  - `docker-compose up -d`
    - Inicia os serviços node e db
      - Esses serviços irão inicializar um container chamado `one_for_all` e outro chamado `one_for_all_db`.
      - Ao iniciar pela primeira vez, o docker constrói a imagem do serviço `node`, instalando as dependências Node necessárias para a avaliação automatizada
  
  - `docker exec -it one_for_all bash`
    - Acessa a linha de comando do container `one_for_all`
      - Isso dá acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano
</details>

<details>
  <summary><strong>Regras de negócio do banco de dados</strong></summary>
  
  - Informações sobre quais planos estão disponíveis e seus detalhes;
    - Cada pessoa usuária pode possuir apenas um plano.
 
  - Informações sobre todas as pessoas artistas;
    - Uma pessoa artista pode ter vários álbuns;
    - Uma pessoa artista pode ser seguida por várias pessoas usuárias.
  
  - Informações sobre todos os álbuns de cada artista;
    - Cada álbum possui apenas uma pessoa artista como principal;
    - Cada álbum possui várias canções.
  
  - Informações sobre todas as canções de cada álbum;
    - Cada canção está contida em apenas um álbum.
  
  - Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
    - Uma pessoa usuária pode possuir apenas um plano;
    - Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (o objetivo do histórico é saber quais canções já foram reproduzidas e não quantas vezes foram reproduzidas);
    - Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.
<br />
</details>
