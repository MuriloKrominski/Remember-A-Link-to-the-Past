---

This project is also documented in English.

- [English Version](README_EN.md)

---

# Remember: A Link to the Past `v1.0-beta`
**Uma Solução Inovadora para Empresas** - Tenha o Poder de "Voltar no Tempo" e de Redescobrir Cada Detalhe do Trabalho Realizado

Por <a href="https://github.com/MuriloKrominski">Murilo Krominski</a>.

```Este repositório contém um projeto inovador que cria funcionalidades que permite aos usuários/gestores "voltar no tempo" para encontrar um registro de qualquer atividade realizada no computador em uma solução utilizando poucas linhas de código em Python em cada etapa, trazendo uma alternativa acessível e poderosa para empresas e desenvolvedores.```

---

## Contato:
Versões comerciais deste projeto podem ser desenvolvidas sob demanda para empresas interessadas, bem como de outros projetos.

Interessado no projeto? Entre em contato.

<a href="https://github.com/MuriloKrominski">https://github.com/MuriloKrominski</a>

---

## Versões e Colaborações:
- Versão alpha privada "α (PRIVADO)": `v0.1-alpha`
- Versão beta publica "β (PÚBLICO)": `v1.0-beta`
- Versões gama comerciais "γ (COMERCIAL)" - solicitadas sob demanda: `v2.x-release`

```Qualquer pessoa pode clonar e contribuir no beta.```

```Nesta documentação, todos os passos do meu projeto estão devidamente comentados, garantindo que qualquer programador experiente possa reproduzi-lo de forma eficiente.```

> **REPOSITÓRIO α (PRIVADO)**:<br>
> - Descrição: Projetos de desenvolvimento privado, ainda em fase de pesquisa, testes ou em uso pessoal.<br>
> - Acesso: Apenas <a href="https://github.com/MuriloKrominski">@MuriloKrominski</a> ou colaboradores específicos têm acesso.<br>
> - Uso: Não estão prontos ou disponíveis para o público.

> **REPOSITÓRIO β (PÚBLICO)**:<br>
> - Descrição: Projetos que são Open Source ou estão parcialmente disponíveis publicamente.<br>
> - Acesso: Acesso público, qualquer pessoa pode clonar e contribuir.<br>
> - Uso: Projetos Open Source ou de colaboração pública, documentados de forma que possam ser facilmente compreendidos ou reproduzidos.

> **REPOSITÓRIO γ (COMERCIAL)**:<br>
> - Descrição: Projetos que foram, podem ser ou serão implementados em ambiente comercial. Estes podem ter uma versão beta pública, mas a versão completa ou modificada é comercializada.<br>
> - Acesso: Repositórios privados, ou parcialmente públicos, mas com acesso completo reservado a clientes.<br>
> - Uso: Inclui projetos encomendados por empresas, soluções fechadas e produtos vendidos sob demanda.

---

## O que é o "Remember: A Link to the Past"?
O **Remember: A Link to the Past** é uma solução open-source desenvolvida para empresas e equipes que buscam otimizar a gestão e recuperação de informações. Ele captura periodicamente a tela do usuário, processa as imagens com inteligência artificial e armazena os dados em um banco de dados. Com uma interface intuitiva, permite buscas rápidas e eficientes de qualquer momento do passado.

A tecnologia avançada do Remember centraliza e organiza todas as informações essenciais, garantindo acesso rápido e preciso a documentos, dados e insights, transformando o fluxo de trabalho da equipe.

---

## Principais Benefícios:
- **Busca Inteligente**: Recupere rapidamente documentos e registros com a ajuda de IA.
- **Organização Centralizada**: Armazene e acesse informações de forma segura e prática.
- **Colaboração em Tempo Real**: Compartilhamento ágil e integração com outras ferramentas.
- **Privacidade e Segurança**: Controle total sobre os dados com opções de armazenamento local.
- **Produtividade**: Aumente a eficiência com acesso rápido às informações.
- **Custo-Benefício**: Solução robusta sem necessidade de hardware avançado.

---

## Para Quem é Ideal:
- **Empresas de todos os portes** que precisam otimizar a organização e recuperação de dados.
- **Profissionais de TI e gestores** em busca de centralizar o conhecimento da equipe.
- **Equipes de marketing, vendas e operações** que precisam de agilidade para acessar informações.

---

## Fluxo e Funcionalidades

1. **Captura de Tela Automática**: Captura screenshots a intervalos de tempo definidos e armazena localmente.
2. **Processamento de Imagens com IA**: As imagens capturadas são processadas para identificar aplicativos abertos, transcrever textos e gerar descrições e outros metadados.
3. **Banco de Dados e Armazenamento Vetorial**: As descrições e metadados extraídos são salvos e vetorizados em um banco de dados, permitindo buscas rápidas e eficientes no futuro.
4. **Busca por Eventos Passados**: Através de uma interface simples, o usuário pode buscar momentos anteriores, utilizando uma busca semântica eficiente para encontrar eventos específicos.

---

## Passo a Passo para Implementação

Aqui está uma visão geral das etapas de implementação e sugestões de códigos:

### 1. Captura de Tela
Para capturar telas do computador a cada minuto.

```python
import pyautogui
import time

def captura_tela(intervalo=60, caminho='./screenshots/'):
    while True:
        screenshot = pyautogui.screenshot()
        screenshot.save(f"{caminho}{time.time()}.png")
        time.sleep(intervalo)
```

A função de captura de tela pode ser otimizada de várias formas, para gerar um timestamp automaticamente e armazenar as imagens de forma organizada, com suporte a múltiplos diretórios baseados em data.

```python
def take_screenshot():
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    save_directory = create_directory_for_today()
    img_path = f"{save_directory}/screenshot_{timestamp}.png"
    screenshot.save(img_path)
```

---

### 2. Processamento de Imagens com IA
Utilizando um modelo de IA para analisar o conteúdo das imagens capturadas.

```python
from modelo_ia import processar_imagem

def analisar_imagem(caminho_imagem):
    descricao = processar_imagem(caminho_imagem)
    return descricao
```

Para integrar um sistema mais robusto para processamento de imagens com IA, pode ser interessante utilizar o modelo da OpenAI ou outros modelos para realizar inferências sobre o conteúdo visual.

```python
def process_image(self, img_path, prompt="Descreva o que está vendo na imagem"):
    img = self.load_image(img_path)
    inputs = [{"type": "text", "text": prompt}]
    return self.chat.invoke(inputs)
```

---

### 3. Armazenamento e Busca

Os dados processados são armazenados e podem ser buscados posteriormente por conteúdo relevante.

```python
from vector_store import armazenar_dados, buscar_por_conteudo

def salvar_e_pesquisar(descricao, conteudo_busca):
    armazenar_dados(descricao)
    return buscar_por_conteudo(conteudo_busca)
```

Para uma abordagem simplificada, podemos utilizar o **Ollama Embeddings** para gerar vetores dos documentos e o **FAISS** para realizar buscas de similaridade.

O código pode facilmente ser otimizado para executar localmente e conectar com um servidor configurado para lidar com embeddings personalizados.

```python
embeddings = OllamaEmbeddings(base_url=ollama_server_url, model='nomic-embed-text')
vectorstore = FAISS.from_documents(documents, embeddings)
```

---

### 4. Interface de Busca

Implementando uma interface simples para facilitar a pesquisa.

```python
def interface_de_busca():
    busca = input("Digite o que deseja encontrar: ")
    resultado = salvar_e_pesquisar(busca)
    print(f"Resultado encontrado: {resultado}")
```

Com uma interface construída com **Streamlit**, o usuário pode realizar buscas facilmente no histórico de atividades, utilizando uma barra de pesquisa. A interface apresenta resultados relevantes, incluindo o conteúdo da imagem, texto extraído, e um link para o local da captura no histórico.

```python
query = st.text_input("O que você procura?")
if query:
    similar_response = vectorstore.similarity_search_with_score(query, k=k)
    st.image(Image.open(similar_response[s][0].metadata["source"]))
```

---

## Dados Técnicos Avançados

O projeto utiliza tecnologias acessíveis, com grande potencial de expansão e personalização:

- **Captura de Tela**: Implementada com a biblioteca **PyAutoGUI**, configurável para intervalos regulares.
- **Processamento de Imagem**: A IA processa as capturas utilizando modelos como **PHY3**, **OpenAI CLIP** ou equivalentes.
- **Armazenamento de Dados**: As descrições são salvas em bancos de dados relacionais ou NoSQL, como **SQLite**, **MongoDB** ou **PostgreSQL**.
- **Busca Vetorial**: Vetorização das informações em uma **vector store**, permitindo buscas rápidas e eficientes através de embeddings.
- **Python**: Linguagem principal do projeto.

---

## Oportunidades de Melhoria e Expansão Comercial

Este projeto apresenta diversas possibilidades de aprimoramento e expansão, tanto como produto quanto como serviço, oferecendo várias oportunidades de negócio:

### Melhorias Potenciais

1. **Aprimoramento do Reconhecimento de Imagens**: Desenvolver modelos de IA treinados especificamente para o contexto da empresa, aumentando a precisão e a relevância das buscas.
2. **Pesquisa Semântica Avançada**: Implementar um sistema de busca baseado na intenção do usuário, indo além das simples palavras-chave com LLM avançado.
3. **Integração com Ferramentas Corporativas**: Adicionar suporte para plataformas como Microsoft 365, Slack, Trello, entre outras, facilitando a integração no dia a dia das empresas.
4. **Segurança e Conformidade**: Garantir criptografia robusta e aderência a regulamentações como a LGPD e a GDPR.

### Possibilidades Comerciais

1. **Licenciamento de Software**
   - Comercializar o **"Remember: A Link to the Past"** como um software licenciado para empresas.
   - Oferecer o modelo SaaS (Software como Serviço), permitindo que as empresas acessem a ferramenta por meio de assinaturas.

2. **Consultoria e Customização**
   - Oferecer serviços de consultoria para adaptar a solução às necessidades específicas dos clientes.
   - Realizar customizações que integrem a ferramenta aos fluxos de trabalho já existentes.

3. **Exploração de Nichos**
   - **Setor Jurídico**: Escritórios de advocacia podem usar o "Remember: A Link to the Past" para documentar e recuperar informações de sessões de trabalho.
   - **Agências Criativas**: Profissionais de design e marketing podem recuperar facilmente ideias e projetos anteriores, otimizando o processo criativo.

4. **Serviços Premium**
   - Oferecer versões premium com recursos adicionais, como maior capacidade de armazenamento, processamento mais rápido e integrações avançadas com outras plataformas.

---

---

---

### Declaração de Isenção de Responsabilidade Legal
`Este projeto, denominado **"Remember: A Link to the Past"**, NÃO é um clone, cópia ou reprodução direta de qualquer tecnologia proprietária. Este projeto foi desenvolvido de forma independente e tem como objetivo demonstrar conceitos de captura de tela, processamento de imagem com inteligência artificial e sistemas de busca vetorizada de informações, utilizando ferramentas e bibliotecas de código aberto.`

### Uso de Termos e Comparações
`- **Não utiliza** códigos, algoritmos ou métodos proprietários.`

`- **Não se apropria** de nenhum recurso, biblioteca ou API de forma indevida ou sem conformidade com as leis de propriedade intelectual.`

`- **Não infringe** patentes, direitos autorais ou marcas registradas ou de qualquer outra entidade.`

### Natureza Educacional e Experimental

`Este projeto foi desenvolvido com **fins educacionais e experimentais**, com o objetivo de explorar e demonstrar técnicas amplamente conhecidas na área de captura de tela e inteligência artificial, embora possam levar a aplicações comerciais posteriores. Todo o código aqui fornecido é de conhecimento ou domínio público ou feito com base em ferramentas de código aberto, sendo construído a partir do zero sem a utilização de quaisquer componentes proprietários.`

### Respeito às Leis de Propriedade Intelectual

`O autor do projeto **respeita rigorosamente** as leis de propriedade intelectual e incentiva a utilização responsável e ética do código. O uso comercial ou distribuição deste projeto não é proibido, mas deve ser feito de maneira a seguir todos os regulamentos aplicáveis de proteção de propriedade intelectual.`

---

---

---