class Lifeworld {
  constructor(numCols = 60, numRows = 40, percentAlive = 0.1) {
    this.numCols = numCols;
    this.numRows = numRows;
    this.percentAlive = percentAlive;
    this.world = this.buildArray();
    this.randomSetup();
    this.worldBuffer = Array(this.numCols)
      .fill()
      .map(() => Array(this.numRows).fill(0));
  }
  buildArray() {
    let grid = [];
    for (let col = 0; col < this.numCols; col++) {
      let newColumn = new Array(this.numRows).fill(0);
      grid.push(newColumn);
    }
    return grid;
  }
  randomSetup() {
    for (let col = 0; col < this.numCols; col++) {
      for (let row = 0; row < this.numRows; row++) {
        this.world[col][row] = Math.random() < this.percentAlive ? 1 : 0;
      }
    }
  }

  getLivingNeighbors(x, y) {
    let arr = this.world; // create an alias so we get to type less below
    if (x > 0 && y > 0 && x < this.numCols - 1 && y < this.numRows - 1) {
      let totalAlive =
        arr[x - 1][y - 1] + // ""Northwest"" arr[x][y-1]+ // ""North"""
        arr[x + 1][y - 1] + // ""Northeast"" arr[x-l)[y]+  // ""West"""
        //arr[x][y] + Don't check ourselves! arr[x+l)[y]+  // and so on ...
        arr[x - 1][y + 1] +
        arr[x][y + 1] +
        arr[x + 1][y + 1];
      return totalAlive;
    }
    return 0;
  }

  step() {
    for (let x = 0; x < this.numCols; x++) {
      for (let y = 0; y < this.numRows; y++) {
        let alives = this.getLivingNeighbors(x, y);
        let cell = this.world[x][y];
        this.worldBuffer[x][y] = 0;
        if (cell == 1) {
          if (alives == 2 || alives == 3) {
            this.worldBuffer[x][y] = 1;
          }
        } else if (cell == 0 && alives == 3) {
          this.worldBuffer[x][y] = 1;
        }
      }
    }
    // now swap arrays
    let temp = this.world;
    this.world = this.worldBuffer;
    this.worldBuffer = temp;
  }
}
