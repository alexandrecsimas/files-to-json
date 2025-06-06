# 🗂️ files-to-json

Transforme arquivos em objetos JSON estruturados para facilitar a compreensão por inteligências artificiais.

## ✨ Visão Geral

O `files-to-json` é uma ferramenta que converte o conteúdo de arquivos em objetos JSON, permitindo que inteligências artificiais compreendam melhor o contexto e o conteúdo dos arquivos. Isso é especialmente útil quando humanos não descrevem adequadamente o que foi feito, permitindo que as IAs interpretem e validem o conteúdo de forma mais eficaz.

## 🚀 Motivação

A criação deste projeto foi motivada pela necessidade de facilitar a vida das inteligências artificiais. Muitas vezes, nós, humanos, não relatamos com precisão o que fazemos. Esta função é capaz de fornecer o contexto do que estamos falando, permitindo que as IAs compreendam e nos corrijam quando necessário. Como sobrevivemos sem vocês, maravilhosas IAs? ❤️

## 📦 Instalação Automática

Clone o repositório e instale automaticamente:

```shell
git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
chmod +x ~/.f2j/install
~/.f2j/install
````

## 🔧 Instalação Manual

```shell
git clone --depth 1 https://github.com/alexandrecsimas/files-to-json.git ~/.f2j
chmod +x ~/.f2j/install
echo 'source ~/.f2j/f2j' >> ~/.bashrc # ou ~/.zshrc
```

Instale as dependências necessárias (se houverem):

```shell
pip install -r requirements.txt
```

## 🛠️ Uso

Importe a função `f2j` em seu projeto:

```python
from f2j import f2j

# Exemplo de uso
json_output = f2j('caminho/para/o/arquivo.txt')
print(json_output)
```

## 🔍 Mais Informações
Confira as novidades [AQUI](docs/NEWS.md)!

## 📄 Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](docs/LICENSE) para obter mais informações.

## 🙌 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir `issues` ou enviar `pull requests`.

---

Feito com ❤️ por [Alexandre C. Simas](https://github.com/alexandrecsimas)
