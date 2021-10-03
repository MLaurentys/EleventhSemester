'use strict';
const words1 = [
  'Acute',
  'Aft',
  'Anti-matter',
  'Bipolar',
  'Cargo',
  'Command',
  'Communication',
  'Computer',
  'Deuterium',
  'Dorsal',
  'Emergency',
  'Engineering',
  'Environmental',
  'Flight',
  'Fore',
  'Guidance',
  'Heat',
  'Impulse',
  'Increased',
  'Inertial',
  'Infinite',
  'Ionizing',
  'Isolinear',
  'Lateral',
  'Linear',
  'Matter',
  'Medical',
  'Navigational',
  'Optical',
  'Optimal',
  'Optional',
  'Personal',
  'Personnel',
  'Phased',
  'Reduced',
  'Science',
  "Ship's",
  'Shuttlecraft',
  'Structural',
  'Subspace',
  'Transporter',
  'Ventral',
];
const words2 = [
  'Propulsion',
  'Dissipation',
  'Sensor',
  'Improbability',
  'Buffer',
  'Graviton',
  'Replicator',
  'Matter',
  'Anti-matter',
  'Organic',
  'Power',
  'Silicon',
  'Holographic',
  'Transient',
  'Integrity',
  'Plasma',
  'Fusion',
  'Control',
  'Access',
  'Auto',
  'Destruct',
  'Isolinear',
  'Transwarp',
  'Energy',
  'Medical',
  'Environmental',
  'Coil',
  'Impulse',
  'Warp',
  'Phaser',
  'Operating',
  'Photon',
  'Deflector',
  'Integrity',
  'Control',
  'Bridge',
  'Dampening',
  'Display',
  'Beam',
  'Quantum',
  'Baseline',
  'Input',
];
const words3 = [
  'Chamber',
  'Interface',
  'Coil',
  'Polymer',
  'Biosphere',
  'Platform',
  'Thruster',
  'Deflector',
  'Replicator',
  'Tricorder',
  'Operation',
  'Array',
  'Matrix',
  'Grid',
  'Sensor',
  'Mode',
  'Panel',
  'Storage',
  'Conduit',
  'Pod',
  'Hatch',
  'Regulator',
  'Display',
  'Inverter',
  'Spectrum',
  'Generator',
  'Cloud',
  'Field',
  'Terminal',
  'Module',
  'Procedure',
  'System',
  'Diagnostic',
  'Device',
  'Beam',
  'Probe',
  'Bank',
  'Tie-In',
  'Facility',
  'Bay',
  'Indicator',
  'Cell',
];

function GetRandomElement(array, randomNum = Math.random()) {
  return array[Math.floor(randomNum * array.length)];
}

function GetTechnobabble(amtOfBabbles) {
  let technobabble = '';
  for (let i = 0; i < amtOfBabbles; i++) {
    technobabble += `${GetRandomElement(words1)}
                     ${GetRandomElement(words2)}
                     ${GetRandomElement(words3)} `;
  }
  return technobabble;
}

function UpdateDisplayedTechnobabble(amtOfBabbles = 1) {
  document.querySelector('#output').innerHTML = GetTechnobabble(amtOfBabbles);
}

UpdateDisplayedTechnobabble();
document.querySelector('#myButton').onclick = () =>
  UpdateDisplayedTechnobabble(1);
document.querySelector('#otherButton').onclick = () =>
  UpdateDisplayedTechnobabble(5);
