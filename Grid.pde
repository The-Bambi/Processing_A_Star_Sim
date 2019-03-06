class Grid {
	int ha; //horizontal amount
	int va; //vertical amount
	int hm; //horizontal modifier - for drawing
	int vm; //vertical modifier
	Cell[][] grid;

	Grid(int ha, int va) {
    this.ha = ha;
    this.va = va;
		this.grid = new Cell[ha][va]; //initialize a list with a size of final grid

    this.hm = width/ha;
    this.vm = height/va;
		
		for (int i = 0; i < va; i++) {
      for (int j = 0; j < ha; j++) {
        boolean temp = false;
        float chance = random(100);
        if(chance<31) temp = true;
			  this.grid[j][i] = new Cell(i,j, this.hm, this.vm, temp);
      }
		}
    
    for (int i = 0; i < va; i++) {
      for (int j = 0; j < ha; j++) {
        if(i > 0) this.grid[j][i].neighbours.add(this.grid[j][i-1]);
        if(i < va-1) this.grid[j][i].neighbours.add(this.grid[j][i+1]);
        if(j > 0) this.grid[j][i].neighbours.add(this.grid[j-1][i]);
        if(j < ha-1) this.grid[j][i].neighbours.add(this.grid[j+1][i]);
      }
    }
	}

	void show() {
    for (int i = 0; i < this.grid.length; i++) {
  		for (Cell cell: this.grid[i]) {
        if(cell.wall) cell.show(255,255,255);
        else cell.show();
  		}
  	}
  }
  
  Cell getCell(int x, int y) {
    return this.grid[y/this.vm][x/this.hm];
  }
  
}
