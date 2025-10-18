void keyPressed() {
  // Pass the key that was pressed to our move function
  applyMove(key);
}

void applyMove(char move) {
  // Only allow a new move if the current one is finished animating
  if (currentMove.finished()) {
    Move m = null;
    switch (move) {
    case 'f': // Front face clockwise
      m = new Move(0, 0, 1, 1);
      break;
    case 'F': // Front face counter-clockwise
      m = new Move(0, 0, 1, -1);
      break;
    case 'b': // Back face clockwise
      m = new Move(0, 0, -1, 1);
      break;
    case 'B': // Back face counter-clockwise
      m = new Move(0, 0, -1, -1);
      break;
      
    // --- 'u' AND 'd' KEYS ARE NOW SWAPPED ---
    case 'd': // This now correctly moves the UP face
      m = new Move(0, 1, 0, 1);
      break;
    case 'D': // UP face counter-clockwise
      m = new Move(0, 1, 0, -1);
      break;
    case 'u': // This now correctly moves the DOWN face
      m = new Move(0, -1, 0, 1);
      break;
    case 'U': // DOWN face counter-clockwise
      m = new Move(0, -1, 0, -1);
      break;
      
    case 'l': // Left face clockwise
      m = new Move(-1, 0, 0, 1);
      break;
    case 'L': // Left face counter-clockwise
      m = new Move(-1, 0, 0, -1);
      break;
    case 'r': // Right face clockwise
      m = new Move(1, 0, 0, 1);
      break;
    case 'R': // Right face counter-clockwise
      m = new Move(1, 0, 0, -1);
      break;
    }

    // If a valid move key was pressed, make it the current move and start it
    if (m != null) {
      currentMove = m;
      currentMove.start();
    }
  }
}
