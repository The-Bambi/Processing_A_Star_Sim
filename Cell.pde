PShape a;

class Cell {
	
	int x;
	int y;
  int hm;
  int vm;

  boolean wall;
	ArrayList<Cell> neighbours;
	float g;
	float h;
	float f;

  Cell came_from;
	
	Cell(int x, int y, boolean wall) {
		this.x = x;
		this.y = y;
		this.wall = wall;
    this.neighbours = new ArrayList<Cell>();
    this.came_from = null;
	}

  Cell(int x, int y, int hm, int vm, boolean wall) {
    this.x = x;
    this.y = y;
    this.hm = hm;
    this.vm = vm;
    this.wall = wall;
    this.neighbours = new ArrayList<Cell>();
    this.came_from = null;
  }

	Cell(int x, int y) {
		this.x = x;
		this.y = y;
		this.wall = false;
    this.neighbours = new ArrayList<Cell>();
    this.came_from = null;
	}
	
	void show() {
    noFill();
		stroke(255);
		strokeWeight(1);
    quad(this.x * this.hm, this.y * this.vm, (this.x +1) * this.hm , (this.y) * this.vm, (this.x + 1) * this.hm, (this.y + 1) * this.vm, (this.x) * this.hm , (this.y +1) * this.vm); 
	}
  
  void show(int red, int green, int blue) {
    fill(red,green,blue);
    stroke(255);
    strokeWeight(1);
    quad(this.x * hm, this.y * vm, (this.x +1) * hm , (this.y) * vm, (this.x + 1) * hm, (this.y + 1) * vm, (this.x) * hm , (this.y +1) * vm); 
  }

  boolean isMoreThan (Cell other) {
    return this.f>other.f;
  }

  boolean isLessThan(Cell other) {
    return this.f<other.f;
  }

  boolean isEqual(Cell other) {
    return this.f==other.f;
  }
  
  boolean isTheSame(Cell other) {
    return (this.x == other.x && this.y == other.y);
  }


}
