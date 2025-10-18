# 3D Rubik's Cube in Processing

This is an interactive 3D Rubik's Cube simulator created with the **Processing** creative coding environment. It allows you to manipulate a 3x3x3 cube using keyboard commands and watch the turns animate in real-time.



---

## Features

- **Fully Interactive 3D Model:** View and rotate the cube from any angle by clicking and dragging the mouse.
- **Animated Face Rotations:** All moves are smoothly animated to show the turn.
- **Keyboard Controls:** Intuitive keyboard shortcuts for all standard face rotations (Front, Back, Up, Down, Left, Right).
- **Animated Shuffle:** Press the spacebar to trigger a 25-move random scramble to mix up the cube for a new challenge.

---

## Getting Started

To run this project on your local machine, follow these simple steps.

### Prerequisites

- You must have the **Processing IDE** installed. You can download it for free from the [official Processing website](https://processing.org/download/).
- This project requires the **PeasyCam** library for easy 3D camera controls.

### Installation & Running

1.  **Install PeasyCam:**
    - Open the Processing IDE.
    - Go to **Sketch** -> **Import Library...** -> **Add Library...**
    - Search for "PeasyCam" and click **Install**.

2.  **Run the Project:**
    - Download or clone all the `.pde` files from this project into a single folder named `RubiksCube`.
    - Open the `RubiksCube.pde` file in the Processing IDE.
    - Press the **Run** button (the triangle icon) at the top of the IDE.

---

## Controls

The cube is controlled entirely with your mouse and keyboard.

### Camera Controls

- **Orbit:** Click and drag with the **left mouse button** to rotate the camera around the cube.
- **Zoom:** Use the **mouse scroll wheel** to zoom in and out.
- **Pan:** Click and drag with the **right mouse button** to pan the camera.

### Cube Controls

- **Shuffle:** Press the **spacebar** to start a random, animated 25-move shuffle.
- **Face Rotations:** Use the following keys to rotate the cube's faces. A **lowercase** letter indicates a **clockwise** turn, while an **uppercase** letter indicates a **counter-clockwise** turn.

| Face  | Clockwise | Counter-Clockwise |
| :---- | :-------: | :---------------: |
| Front |   `f`     |        `F`        |
| Back  |   `b`     |        `B`        |
| Up    |   `d`     |        `D`        |
| Down  |   `u`     |        `U`        |
| Left  |   `l`     |        `L`        |
| Right |   `r`     |        `R`        |

---

## File Structure

The project is broken down into several files, each with a specific responsibility:

- `RubiksCube.pde`: The main sketch file. Handles `setup()` and `draw()` loops, and initializes the cube.
- `Cubie.pde`: Defines the class for a single one of the 27 small cubes (a "cubie").
- `Face.pde`: Defines the colored faces that make up each cubie.
- `Move.pde`: Handles the logic and state for animating a single turn.
- `controls.pde`: Manages all keyboard input for shuffling and manual turns.
- `turns.pde`: Contains the core logic for updating the cube's state after a turn is completed.

---

## 🙏 Acknowledgments

This project is based on the fantastic "Coding Challenge" series by Daniel Shiffman at **The Coding Train**. You can find the original tutorial that inspired this project [on YouTube](https://youtu.be/8U2gsbNe1Uo).
