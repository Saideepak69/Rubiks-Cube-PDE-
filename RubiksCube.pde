import peasy.*;

PeasyCam cam;

float speed = 0.05;
int dim = 3;
Cubie[] cube = new Cubie[dim*dim*dim];

Move currentMove;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);

  // Initialize all the cubies
  int index = 0;
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubie(matrix, x, y, z);
        index++;
      }
    }
  }

  // Initialize with a finished move so we can start fresh
  currentMove = new Move(0, 0, 0, 0);
  currentMove.finished = true;
}

void draw() {
  background(51);

  // You can remove or adjust these rotate calls to change the default view
  rotateX(-0.5);
  rotateY(0.4);
  rotateZ(0.1);

  // This will animate the move when one is triggered by a keypress
  currentMove.update();

  // Draw all the cubies
  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    // Apply the animation rotation to the correct slice of the cube
    if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
      rotateZ(currentMove.angle);
    } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
      rotateX(currentMove.angle);
    } else if (abs(cube[i].y) > 0 && cube[i].y == currentMove.y) {
      rotateY(-currentMove.angle);
    }
    cube[i].show();
    pop();
  }
}
