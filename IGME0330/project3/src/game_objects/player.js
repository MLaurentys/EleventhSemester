const STANCES = Object.seal({
  TOP: 0,
  MIDDLE: 1,
  BOTTOM: 2,
});

export default class Player {
  constructor(imgEl) {
    this.imgEl = imgEl;
    this.moveUp = this.moveUp.bind(this);
    this.moveDown = this.moveDown.bind(this);
    this.yPos = 10;
  }

  moveUp() {
    if (this.playerStance === STANCES.MIDDLE) this.playerStance = STANCES.TOP;
    else if (this.playerStance === STANCES.BOTTOM)
      this.playerStance = STANCES.MIDDLE;
  }

  moveDown() {
    if (this.playerStance === STANCES.MIDDLE)
      this.playerStance = STANCES.BOTTOM;
    else if (this.playerStance === STANCES.TOP)
      this.playerStance = STANCES.MIDDLE;
  }

  render(ctx) {
    ctx.save();
    ctx.drawImage(this.imgEl, 50, this.yPos);
    ctx.restore();
  }
}
