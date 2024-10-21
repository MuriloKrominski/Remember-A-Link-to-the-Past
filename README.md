This project was originally documented in Portuguese.

- [Portuguese Version](README.md)
---

# Remember: A Link to the Past `v1.0-beta`
**An Innovative Solution for Companies** - Have the Power to "Go Back in Time" and Rediscover Every Detail of the Work Done

By <a href="https://github.com/MuriloKrominski">Murilo Krominski</a>.

This repository contains an innovative project that creates functionalities allowing users/managers to "go back in time" to find a record of any activity performed on the computer in a solution using just a few lines of Python code at each stage, providing an accessible and powerful alternative for companies and developers.
---

## Table of Contents
- [Contact](#contact)
- [Versions and Collaborations](#versions-and-collaborations)
- [What is "Remember: A Link to the Past"?](#what-is-remember-a-link-to-the-past)
- [Key Benefits](#key-benefits)
- [Ideal For](#ideal-for)
- [Workflow and Features](#workflow-and-features)
- [Step-by-Step Implementation](#step-by-step-implementation)
  - [1. Screen Capture](#1-screen-capture)
  - [2. Image Processing with AI](#2-image-processing-with-ai)
  - [3. Storage and Search](#3-storage-and-search)
  - [4. Search Interface](#4-search-interface)
- [Advanced Technical Data](#advanced-technical-data)
- [Opportunities for Improvements and Commercial Expansion](#opportunities-for-improvements-and-commercial-expansion)
  - [Potential Improvements](#potential-improvements)
  - [Commercial Possibilities](#commercial-possibilities)
- [Legal Disclaimer](#legal-disclaimer)
- [Use of Terms and Comparisons](#use-of-terms-and-comparisons)
- [Educational and Experimental Nature](#educational-and-experimental-nature)
- [Respect for Intellectual Property Laws](#respect-for-intellectual-property-laws)
---

## Contact:
Commercial versions of projects, can be developed on demand for interested companies.

Interested in the project? Get in touch: <a href="https://github.com/MuriloKrominski">https://github.com/MuriloKrominski</a>
---

## Versions, Collaborations and Sponsorships:
> <a href="https://murilokrominski.github.io/Collaborations-Sponsorships-Versions/docs/en-us.html">Link: Versions, Collaborations and Sponsorships</a><br>

 About project versions: α (PRIVATE), β (PUBLIC) and γ (COMMERCIAL).

 Anyone can clone and contribute to the beta version.

 If you wish to support the development of this and other public projects, I will be immensely grateful! Your sponsorship helps me dedicate more time to developing new features, fixing bugs, and keeping everything up to date.

---

## What is "Remember: A Link to the Past"?
**Remember: A Link to the Past** is an open-source solution developed for companies and teams looking to optimize information management and retrieval. It periodically captures the user's screen, processes the images with artificial intelligence, and stores the data in a database. With an intuitive interface, it allows quick and efficient searches of any past moment.

Remember's advanced technology centralizes and organizes all essential information, ensuring quick and accurate access to documents, data, and insights, transforming the team's workflow.
---

## Key Benefits:
- **Smart Search**: Quickly retrieve documents and records with the help of AI.
- **Centralized Organization**: Store and access information securely and conveniently.
- **Real-Time Collaboration**: Agile sharing and integration with other tools.
- **Privacy and Security**: Full control over data with local storage options.
- **Productivity**: Increase efficiency with quick access to information.
- **Cost-Effective**: Robust solution without the need for advanced hardware.
---

## Ideal For:
- **Companies of all sizes** that need to optimize data organization and retrieval.
- **IT professionals and managers** looking to centralize team knowledge.
- **Marketing, sales, and operations teams** that need agility to access information.
---

## Workflow and Features
1. **Automatic Screenshot Capture**: Captures screenshots at defined time intervals and stores them locally.
2. **AI Image Processing**: The captured images are processed to identify open applications, transcribe text, and generate descriptions and other metadata.
3. **Vector Database and Storage**: The extracted descriptions and metadata are saved and vectorized in a database, enabling quick and efficient searches in the future.
4. **Search for Past Events**: Through a simple interface, the user can search for previous moments, using an efficient semantic search to find specific events.
---

## Step-by-Step Implementation
Here is an overview of the implementation steps and code suggestions:

### 1. Screen Capture
To capture computer screens every minute.

```python
import pyautogui
import time

def captura_tela(intervalo=60, caminho='./screenshots/'):
    while True:
        screenshot = pyautogui.screenshot()
        screenshot.save(f"{caminho}{time.time()}.png")
        time.sleep(intervalo)
```

The screenshot capture function can be optimized in several ways, to automatically generate a timestamp and store the images in an organized manner, with support for multiple directories based on date.

```python
def take_screenshot():
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    save_directory = create_directory_for_today()
    img_path = f"{save_directory}/screenshot_{timestamp}.png"
    screenshot.save(img_path)
```
---

### 2. Image Processing with AI
Using an AI model to analyze the content of the captured images.

```python
from modelo_ia import processar_imagem

def analisar_imagem(caminho_imagem):
    descricao = processar_imagem(caminho_imagem)
    return descricao
```

To integrate a more robust system for image processing with AI, it might be interesting to use the OpenAI model or other models to perform inferences on the visual content.

```python
def process_image(self, img_path, prompt="Descreva o que está vendo na imagem"):
    img = self.load_image(img_path)
    inputs = [{"type": "text", "text": prompt}]
    return self.chat.invoke(inputs)
```
---

### 3. Storage and Search
The processed data is stored and can be searched later for relevant content.

```python
from vector_store import armazenar_dados, buscar_por_conteudo

def salvar_e_pesquisar(descricao, conteudo_busca):
    armazenar_dados(descricao)
    return buscar_por_conteudo(conteudo_busca)
```

For a simplified approach, we can use **Ollama Embeddings** to generate vectors from the documents and **FAISS** to perform similarity searches.

The code can easily be optimized to run locally and connect with a server configured to handle custom embeddings.

```python
embeddings = OllamaEmbeddings(base_url=ollama_server_url, model='nomic-embed-text')
vectorstore = FAISS.from_documents(documents, embeddings)
```
---

### 4. Search Interface
Implementing a simple interface to facilitate search.

```python
def interface_de_busca():
    busca = input("Digite o que deseja encontrar: ")
    resultado = salvar_e_pesquisar(busca)
    print(f"Resultado encontrado: {resultado}")
```

With an interface built with **Streamlit**, the user can easily search the activity history using a search bar. The interface displays relevant results, including image content, extracted text, and a link to the capture's location in the history.

```python
query = st.text_input("O que você procura?")
if query:
    similar_response = vectorstore.similarity_search_with_score(query, k=k)
    st.image(Image.open(similar_response[s][0].metadata["source"]))
```
---

## Advanced Technical Data
The project uses accessible technologies, with great potential for expansion and customization:

- **Screen Capture**: Implemented with the **PyAutoGUI** library, configurable for regular intervals.
- **Image Processing**: The AI processes the captures using models such as **PHY3**, **OpenAI CLIP**, or equivalents.
- **Data Storage**: Descriptions are saved in relational or NoSQL databases, such as **SQLite**, **MongoDB**, or **PostgreSQL**.
- **Vector Search**: Information is vectorized in a **vector store**, allowing fast and efficient searches through embeddings.
- **Python**: The main language of the project.
---

## Opportunities for Improvements and Commercial Expansion

This project presents several opportunities for improvement and expansion, both as a product and as a service, offering various business opportunities:

### Potential Improvements
1. **Improved Image Recognition**: Develop AI models specifically trained for the company's context, increasing search accuracy and relevance.
2. **Advanced Semantic Search**: Implement a search system based on user intent, going beyond simple keywords with advanced LLMs.
3. **Integration with Corporate Tools**: Add support for platforms like Microsoft 365, Slack, Trello, and others, facilitating integration into the company's daily workflow.
4. **Security and Compliance**: Ensure robust encryption and adherence to regulations such as LGPD and GDPR.

### Commercial Possibilities
1. **Software Licensing**
   - Commercialize **"Remember: A Link to the Past"** as licensed software for companies.
   - Offer a SaaS (Software as a Service) model, allowing companies to access the tool through subscriptions.

2. **Consulting and Customization**
   - Offer consulting services to tailor the solution to the specific needs of clients.
   - Perform customizations that integrate the tool into existing workflows.

3. **Niche Exploration**
   - **Legal Sector**: Law firms can use "Remember: A Link to the Past" to document and retrieve work session information.
   - **Creative Agencies**: Design and marketing professionals can easily retrieve past ideas and projects, optimizing the creative process.

4. **Premium Services**
   - Offer premium versions with additional features, such as greater storage capacity, faster processing, and advanced integrations with other platforms.

---

---

---

### Legal Disclaimer
> This project, called "Remember: A Link to the Past", is NOT a clone, copy, or direct reproduction of any proprietary technology. This project was developed independently and is intended to demonstrate concepts of screen capture, image processing with artificial intelligence, and vectorized information search systems, using open-source tools and libraries.

### Use of Terms and Comparisons
> Does not use proprietary codes, algorithms, or methods.

> Does not appropriate** any resources, libraries, or APIs improperly or without compliance with intellectual property laws.

> Does not infringe patents, copyrights, or trademarks of any entity.

### Educational and Experimental Nature

> This project was developed with educational and experimental purposes, aimed at exploring and demonstrating widely known techniques in the area of screen capture and artificial intelligence, although it may lead to later commercial applications. All code provided here is public domain knowledge or built using open-source tools, constructed from scratch without the use of any proprietary components.

### Respect for Intellectual Property Laws

> The author of the project strictly respects intellectual property laws and encourages responsible and ethical use of the code. The commercial use or distribution of this project is not prohibited but must comply with all applicable intellectual property protection regulations.

---

---

---
<!-- @MuriloKrominski #MuriloKrominski
-->