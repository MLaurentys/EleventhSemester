import { API_DATA } from './env.js';
import { API_ENDPOINT, IMAGES_ENDPOINT } from './consts.js';

export function createCard(src, alt, label) {
  const template = document.createElement('template');
  template.innerHTML = `<mdbc-card
    data-source=${src}
    data-alt='${alt}'
    data-label='${label}'>
    </mdbc>`;
  return template.content;
}

export async function loadMovieById(id) {
  const uri = API_ENDPOINT + 'movie/' + id + '?api_key=' + API_DATA.API_KEY;
  try {
    const movieInfo = await loadData(uri);
    return {
      name: movieInfo.original_title,
      img_path: movieInfo.poster_path,
      id: movieInfo.id,
    };
  } catch {
    console.info('Could not load movie info');
    return {};
  }
}

export async function loadPersonById(id) {
  const uri = API_ENDPOINT + 'person/' + id + '?api_key=' + API_DATA.API_KEY;
  try {
    const personInfo = await loadData(uri);
    return {
      name: personInfo.name,
      img_path: personInfo.profile_path,
      id: personInfo.id,
    };
  } catch {
    console.info('Could not load person info by id');
    return {};
  }
}

export async function loadPeopleOptions(id) {
  const uri =
    API_ENDPOINT + 'movie/' + id + '/credits?api_key=' + API_DATA.API_KEY;
  try {
    const optionsInfo = await loadData(uri);
    return optionsInfo.cast.map((option) => {
      return {
        name: option.name,
        img_path: option.profile_path,
        id: option.id,
      };
    });
  } catch {
    console.info('Could not load movie credits info');
    return [];
  }
}

export async function loadMovieOptions(id) {
  const uri =
    API_ENDPOINT +
    `person/${id}/movie_credits` +
    `?api_key=${API_DATA.API_KEY}`;
  try {
    const optionsInfo = await loadData(uri);
    return optionsInfo.cast.map((option) => {
      return {
        name: option.original_title,
        img_path: option.poster_path,
        id: option.id,
      };
    });
  } catch {
    console.info('Could not load movie credits info');
    return [];
  }
}

export async function loadPersonByName(name) {
  const uri =
    API_ENDPOINT +
    'search/person?api_key=' +
    API_DATA.API_KEY +
    '&query=' +
    encodeURIComponent(name);
  try {
    const personInfo = (await loadData(uri)).results[0];
    return {
      name: personInfo.name,
      img_path: personInfo.profile_path,
      id: personInfo.id,
    };
  } catch {
    console.info('Could not load person by its name');
    return [];
  }
}

async function loadData(uriString) {
  const result = await fetch(uriString);
  const value = await result.arrayBuffer();
  const text = new TextDecoder().decode(value);
  return JSON.parse(text);
}
