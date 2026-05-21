> **EN:** Flutter exercise on code modularization: split `main`, pages, and widgets into separate files. Work in progress; app code is in the `atvd` folder.
>
> *The rest of this README is in Brazilian Portuguese (pt-BR).*


---

# Modularização Flutter

Atividade em Flutter para praticar **modularização do código**: separar app, páginas e widgets em arquivos diferentes, em vez de concentrar tudo no `main.dart`.

## Status

**Em desenvolvimento** — a estrutura base já existe, mas o app ainda será evoluído.

## Em que consiste

- **`lib/main.dart`** — entrada do app (`MeuApp`, tema, `DevicePreview`).
- **`lib/pages/page1.dart`** — tela principal (`TeladDesign`).
- **`lib/widgets/card_icone.dart`** — widget reutilizável `Cartao` (ícone, título, descrição e ação).

## Como executar

O código fica na pasta `atvd`:

```bash
cd atvd
flutter pub get
flutter run
```
