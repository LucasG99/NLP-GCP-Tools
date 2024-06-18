# Levantamento de Ferramentas de NLP na Google Cloud Platform (GCP)

## Serviços de NLP na GCP

### 1. Cloud Natural Language API
O Cloud Natural Language API oferece poderosas ferramentas de análise de texto. Ele pode realizar análise de sentimento, extração de entidades, análise de sintaxe e classificação de conteúdo.

#### Exemplos de Aplicação:
- **Análise de Sentimento**: Avaliar as opiniões de clientes em reviews de produtos para determinar o grau de satisfação.
- **Extração de Entidades**: Identificar e categorizar nomes de pessoas, organizações, locais e eventos em textos de notícias.
- **Análise de Sintaxe**: Analisar a estrutura gramatical de textos para entender as relações entre as palavras.
- **Classificação de Conteúdo**: Classificar automaticamente documentos em categorias predefinidas.

### Exemplo de Implementação com Requisições HTTP

Para utilizar a API via requisições HTTP, você pode seguir os passos abaixo:

1. **Habilitar a API**: Primeiro, habilite o Cloud Natural Language API no Google Cloud Console.

2. **Obter Credenciais**: Configure a autenticação para a API utilizando uma chave de API ou uma conta de serviço.

3. **Fazer uma Requisição HTTP**:
    ```bash
    curl -X POST \
      "https://language.googleapis.com/v1/documents:analyzeSentiment?key=YOUR_API_KEY" \
      -H "Content-Type: application/json; charset=utf-8" \
      -d '{
        "document": {
          "type": "PLAIN_TEXT",
          "content": "Google Cloud Natural Language API é incrível!"
        },
        "encodingType": "UTF8"
      }'
    ```
4. **Interpretação da Resposta**: A resposta da API incluirá informações sobre o sentimento detectado no texto, como a pontuação e a magnitude.

```json
{
  "documentSentiment": {
    "magnitude": 0.9,
    "score": 0.9
  },
  "language": "en"
}
