/*import java.util.*;

Grid grid;
Cell start;
Cell goal;
Set closed_list;
Cell current;

boolean begin = false;

void setup() {
  frameRate(20);
  size(601,601);
  grid = new Grid(20,20);
  
  start = grid.grid[0][0];
  goal = grid.grid[9][9];

  closed_list = new HashSet<Cell>();

  start.f = 0;
  start.g = 0;
  
  start.wall = false;
  goal.wall = false;
}

void draw() {
  background(51);
  grid.show();
  goal.show(255,255,0);
  start.show(0,0,255);
  if(begin) {
    start.show(0,255,0);
    Cell current = start;
    if (current != goal) {
      
      closed_list.add(current);
      current.show(255,0,0);
      
      for (Cell neighbour: current.neighbours) {
        if (neighbour.isTheSame(goal)) {
          print("done");
          noLoop();
        }
        if (!(neighbour.wall) && !(closed_list.contains(neighbour))) {
          if (open_list.heap.contains(neighbour)) {
            if (neighbour.f <= current.f) {
              neighbour.came_from = current;
              neighbour.g = current.g + 4;
              neighbour.h = sqrt((neighbour.x - goal.x)*(neighbour.x - goal.x) + (neighbour.y - goal.y)*(neighbour.y - goal.y));
              neighbour.f = neighbour.h + neighbour.g;
            }
          } else {
            if (neighbour.f <= current.f) {
              neighbour.came_from = current;
              neighbour.g = current.g + 4;
              neighbour.h = sqrt((neighbour.x - goal.x)*(neighbour.x - goal.x) + (neighbour.y - goal.y)*(neighbour.y - goal.y));
              neighbour.f = neighbour.h + neighbour.g;
              open_list.insert(neighbour);
            }
          }
        }
      }
      Cell path = current;
      while (path.came_from != null) {
        path.show(0,255,0);
        path = path.came_from;
      }
    }
    //saveFrame();
  }
}

void keyPressed() {
  if (key == 's') {
    Cell temp = grid.getCell(mouseX, mouseY);
    if (temp.isTheSame(goal)) return;
    start = temp;
    open_list.extract();
    open_list.insert(start);
  }
  
  if (key == 'g') {
    Cell temp = grid.getCell(mouseX, mouseY);
    if (temp.isTheSame(start)) return;
    goal = grid.getCell(mouseX, mouseY);
  }
  
  
  if (key == ' ') {
    begin = true;
  }
  
  if (key == 'w') {
    Cell temp = grid.getCell(mouseX, mouseY);
    if (!(temp.isTheSame(goal) && !(temp.isTheSame(start)))) {
      temp.wall = !(grid.getCell(mouseX, mouseY).wall);
    }
  }
  
  if (key == 'c') {
    for (int i = 0; i < grid.va; i++) {
      for (int j = 0; j < grid.ha; j++) {
        grid.grid[j][i].wall = false;
      }
    }
  }
  if (key == 'r') {
    for (int i = 0; i < grid.va; i++) {
      for (int j = 0; j < grid.ha; j++) {
        boolean temp = false;
        float chance = random(100);
        if(chance<31) temp = true;
        grid.grid[j][i].wall = temp;
      }
    }
  }
}

void mousePressed() {
  Cell temp = grid.getCell(mouseX, mouseY);
  if (!(temp.isTheSame(goal) && !(temp.isTheSame(start)))) {
    temp.wall = !(grid.getCell(mouseX, mouseY).wall);
  }
}
*/
