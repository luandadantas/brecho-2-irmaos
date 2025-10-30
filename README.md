# Brechó 2 Irmãos

Esse projeto é uma aplicação Flask simples para um brechó, containerizada com Docker e pronta para deploy no Kubernetes.

## 📋 Pré-requisitos

- [Docker](https://www.docker.com/get-started) instalado
- [Python 3.11+](https://www.python.org/downloads/) (para desenvolvimento local)

## 🚀 Como rodar localmente

1. **Construa a imagem Docker**:
   ```bash
   docker build -t app .
   ```

2. **Execute o container**:
   ```bash
   docker run -p 8080:5000 app
   ```

3. **Acesse a aplicação**:
   Abra seu navegador em: http://localhost:8080





## 📁 Estrutura do Projeto

```
brecho-2-irmaos/
├── app.py              # Aplicação Flask (site do brechó)
├── Dockerfile          # Configuração do container Docker
├── requirements.txt    # Dependências Python
└── README.md          # Este arquivo
```

## 📝 Notas

- A aplicação roda em modo debug por padrão (não use em produção)
- A porta interna do container é 5000, mapeada para 8080 no host
- Mudanças no código requerem rebuild da imagem Docker

---

**Autor**: Luanda Dantas 
**Projeto**: Estudos de Kubernetes 