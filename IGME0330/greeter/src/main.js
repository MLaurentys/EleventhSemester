'use strict';

const bHi = document.querySelector('#btn-hi');
const bBye = document.querySelector('#btn-bye');
bHi.onclick = () => SaySomething('Hello');
bBye.onclick = () => SaySomething('Bye');

function SaySomething(message) {
  const firstName = document.querySelector('#firstName');
  const lastName = document.querySelector('#lastName');
  const out = document.querySelector('#output');
  out.innerHTML = `${message}
                   ${firstName.value ? firstName.value : 'Rita'}
                   ${lastName.value ? lastName.value : 'Skeeter'}`;
}