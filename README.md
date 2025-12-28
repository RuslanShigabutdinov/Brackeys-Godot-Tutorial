# Godot Beginner Platformer

This project is a small 2D platformer created while learning the Godot Engine.

It is based on the video tutorial by **Brackeys — *How to Make a Video Game (Godot Beginner Tutorial)***:

* YouTube link: [https://www.youtube.com/watch?v=LOhfqjmasi0&list=PLrT2fbyJrAIctd7zNUsdPakIllX2lhrzo&index=4&t=876s](https://www.youtube.com/watch?v=LOhfqjmasi0&list=PLrT2fbyJrAIctd7zNUsdPakIllX2lhrzo&index=4&t=876s)

The overall structure and gameplay closely follow the tutorial, however **the coin collection logic has been improved and refactored to use signals**, following a more idiomatic “Godot-way” approach.

---

## Changes Compared to the Tutorial

### Coin Logic (Refactored)

In the original tutorial, coins directly access the `GameManager` to increase the score. In this project, that logic was changed to use signals:

* Coins emit a `collected` signal when picked up
* `GameManager` listens to this signal and updates the score
* Coins are decoupled from score, UI, and game management logic

This makes the code easier to read, safer to refactor, and more reusable.

---

## Project Structure

The project is split into small, focused scenes and scripts:

* **Game** – main scene that assembles the level
* **Player** – player movement, jumping, and animations
* **Enemy** – simple patrolling enemy logic
* **Coin** – collectible object that emits a signal when picked up
* **GameManager** – handles score tracking and UI updates
* **Killzone** – resets the player when falling off the level
* **Music** – background music playback

Scripts are located in the `scripts/` directory, and scenes are organized by gameplay responsibility.
