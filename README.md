> **EN:** Flutter exercise on code modularization: split `main`, pages (`page1` to `page5`), and widgets into separate files. Built with custom interactive cards.
>
> *The rest of this README is in Brazilian Portuguese (pt-BR).*


---

# Modularização Flutter

Atividade em Flutter desenvolvida para praticar a **modularização de código** e navegação entre telas. O projeto foca em extrair componentes e páginas do arquivo principal, mantendo a estrutura organizada e limpa.

## Status

**Finalizado** — funcional com todo o redirecionamento de páginas.

## Em que consiste

- **`lib/main.dart`** — Ponto de entrada do aplicativo.
- **`lib/widgets/card_icone.dart`** — Componente reutilizável (`Cartao`) que recebe ícone, título, descrição, cores customizadas e uma ação de clique (`onPressed`).
- **`lib/pages/page1.dart`** — Tela principal (`TeladDesign`) que gerencia e renderiza os cartões de interesses (Perfil, Séries/Animes, Jogos e Filmes). Cada cartão, ao ser acionado, abre um `showModalBottomSheet` informativo e navega para sua respectiva subtela.
- **`lib/pages/` (`page2.dart` a `page5.dart`)** — Subtelas de destino para cada categoria mapeada na página inicial.

## Como executar

Certifique-se de estar na raiz do projeto onde o ambiente Flutter está configurado:

```bash
flutter pub get
flutter run
```
<img src=./preview></img>
