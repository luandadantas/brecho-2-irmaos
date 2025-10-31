# Brechó 2 Irmãos

![brecho-2-irmaos](photo-b2i.jpeg)

Esse projeto é uma aplicação Flask simples para um brechó, containerizada com Docker e pronta para deploy no Kubernetes.


## 📋 Pré-requisitos

- [Docker](https://www.docker.com/get-started) instalado
- [Python 3.11+](https://www.python.org/downloads/) (para desenvolvimento local)

## 🚀 Como rodar localmente

Faz o build do container, passar pra o cluster e sobe o pod:
```bash
make deploy
```

Roda a aplicação:
```bash
make run
```

**Acesse a aplicação**:
   Abra seu navegador em: http://localhost:8080

## 📝 Notas

- A aplicação roda em modo debug por padrão (não use em produção)
- A porta interna do container é 5000, mapeada para 8080 no host
- Mudanças no código requerem rebuild da imagem Docker

---

**Autor**: Luanda Dantas 
**Projeto**: Estudos de Kubernetes 