<p align="center">
  <img src="img/logo.svg" alt="Noru Mega">
</p>

<p align="center">
  <i>simple desktop, modular experience</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Qt-Quick%20%7C%20QML-41CD52?logo=qt&logoColor=white&style=flat-square">
  <img src="https://img.shields.io/badge/platform-Linux-FCC624?logo=linux&logoColor=white&style=flat-square">
  <img src="https://img.shields.io/badge/UI-QML-blue?style=flat-square">
  <img src="https://img.shields.io/github/stars/winhuirass-hue/noru-mega?color=yellow&style=flat-square">
  <img src="https://img.shields.io/github/forks/winhuirass-hue/noru-mega?style=flat-square">
  <img src="https://img.shields.io/badge/license-CC0--1.0-lightgrey?style=flat-square">
</p>

**Noru Mega** is a lightweight desktop interface built with **Qt Quick and QML**.

The project provides a simple desktop shell with a top HUD, application launcher,
workspace indicators, and a central desktop area.

---

<h2 align="center">Features</h2>

- Qt Quick / QML interface
- ApplicationWindow based desktop
- Dark minimal UI
- Top desktop HUD
- Application launcher
- Horizontal application list
- Workspace indicators
- Live digital clock
- 1280×720 default window
- Modular design for future Noru applications

---

<h2 align="center">Desktop</h2>

The current interface contains:

- **Mega** — main desktop button
- **Nimbus** — application slot
- **nCalc** — calculator slot
- **nClock** — clock slot
- **AquaPaint** — graphics application slot
- **N / B / W** — desktop indicators
- **Clock** — live system time

---

<h2 align="center">How It Works</h2>

1. Qt creates the ApplicationWindow
2. Noru Mega initializes the desktop background
3. The top HUD is created with RowLayout
4. Applications are displayed through a horizontal ListView
5. Workspace indicators are rendered on the right
6. A Timer updates the clock every second

---

<h2 align="center">Project Structure</h2>

~~~text
noru-mega/
├── Main.qml
├── img/
│   └── logo.svg
└── README.md
~~~

---

<h2 align="center">Requirements</h2>

- Qt 6
- Qt Quick
- Qt Quick Controls
- Qt Quick Layouts

---

<h2 align="center">Run</h2>

Using Qt Creator:

1. Open the project directory.
2. Create or open a Qt Quick application.
3. Add Main.qml.
4. Select a Qt 6 kit.
5. Run the application.

For a QML runtime environment:

~~~bash
qml Main.qml
~~~

---

<h2 align="center">Example</h2>

The desktop window starts with:

~~~qml
ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Noru Mega"
}
~~~

---

<h2 align="center">Roadmap</h2>

- [x] Basic desktop window
- [x] Top HUD
- [x] Application list
- [x] Workspace indicators
- [x] Digital clock
- [ ] Launch applications
- [ ] Window management
- [ ] Real workspace switching
- [ ] System tray
- [ ] Settings
- [ ] Noru application integration
- [ ] Custom themes
- [ ] Linux desktop integration

---

<h2 align="center">Philosophy</h2>

Noru Mega follows a simple idea:

> minimal interface, modular applications, clear desktop experience.

The desktop should stay lightweight while individual Noru applications
can evolve independently.

---

<h2 align="center">License</h2>

Noru Mega is released under **CC0 1.0**.

<p align="right">
  <a href="https://creativecommons.org/publicdomain/zero/1.0/">
    <img src="https://licensebuttons.net/p/zero/1.0/88x31.png" alt="License: CC0 1.0">
  </a>
</p>
