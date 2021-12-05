const template = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<link rel="stylesheet" href="../styles/game.css" />
<div id="game-container">
    <div id="vanta"  style="width:100%; height:100%"> </div>
    <canvas style="width:100%; height:100%"></canvas>
    <img style="display:none" id="player-ship" src="../../images/ship.png" disabled>
    <img style="display:none" id="bullet" src="../images/bullet.png" disabled>
    <div id="main-menu" class="menu-container">
      <img src="../images/title.png"/>
      <div id="input-selector" class="control">
        <label class="radio">
          <input checked type="radio" name="input">
          Voice
        </label>
        <label class="radio">
          <input type="radio" name="input">
          Keyboard
        </label>
      </div>
      <button id="play" class="button menu-button is-success mt-5 mb-5">Play</button>
      <button id="controls" class="button menu-button is-info">Controls</button>
    </div>
    <div id="controls-menu" class="menu-container" style="display:none;">
      <img id="controls-img" src="../images/scrollPSD_2.png">
      <a class="boxclose"></a>
    </div>
</div>
`;

export default template;
