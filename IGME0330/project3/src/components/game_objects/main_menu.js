export default class MainMenu {
  constructor(ctx) {
    ctx.onmousedown = this.checkClicks;
    this.checkClicks = this.checkClicks.bind(this);
  }

  checkClicks() {}
  update(ctx) {}

  render(ctx) {
    ctx.beginPath();
    ctx.rect(50, 50, 100, 150);
    ctx.fill();
    ctx.closePath();
  }
}
