> | 
### Principais diferenças:

1. **Sistema de blocos flexível**
    - Nova versão: Suporte a múltiplos blocos (laravel, infra, docker, all, etc) em qualquer ordem
    - Versão anterior: Apenas bloco "laravel" como primeiro parâmetro

2. **Processamento recursivo inteligente**
    - Nova: Varredura recursiva automática em diretórios (ex: `docker/` inclui subpastas)
    - Anterior: Processamento manual apenas para Laravel

3. **Compatibilidade multi-shell**
    - Nova: Funciona em Bash e Zsh com verificações específicas
    - Anterior: Somente Bash

4. **Organização de saída**
    - Nova: Agrupamento por blocos + arquivos comuns + estatísticas detalhadas
   ```bash
   📦 Resultados Agrupados:
   ● Bloco [laravel] (15 arquivos)
   ● Bloco [docker] (3 arquivos)
   ● Outros Arquivos (2)
   ✅ Total de 20 arquivos convertidos!
   ```
    - Anterior: Listagem simples sem agrupamento

5. **Novos recursos**
    - Bloco `all` para processar todo o diretório
    - Bloco `ignorados` para arquivos temporários
    - Suporte macOS/WSL
    - Detecção de arquivos binários
    - Mensagens coloridas e intuitivas


---

## 📖 Documentação Completa

Consulte a [documentação detalhada](F2J.md) para mais informações, exemplos e dicas avançadas.

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](LICENSE.md) para mais informações.

---

### 🤖 Feito por [Alexandre Carvalho](https://github.com/alexandrecsimas) 

---