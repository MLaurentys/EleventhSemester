export function createCard(src, alt, label) {
  const template = document.createElement('template');
  template.innerHTML = `<mdbc-card
    data-source=${src}
    data-alt='${alt}'
    data-label='${label}'>
    </mdbc>`;
  return template.content;
}
