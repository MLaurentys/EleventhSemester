export const FFT_SIZE = 4096;
export const BARS_TO_SKIP = Math.ceil(60 / (48000 / FFT_SIZE));
export const NUM_BARS = Math.ceil(300 / (48000 / FFT_SIZE)) - BARS_TO_SKIP;
export const BIN_FACTOR = 0.8;
export const PAD_FACTOR = 1 - BIN_FACTOR;
// How much in percentage is a step
export const HISTO_STEP = 100 / NUM_BARS;
// Offset used for calculations
export const OFFSET = HISTO_STEP * (PAD_FACTOR / 2);
// Low and high starting bin division
export const START_LOW = NUM_BARS / 2 - 1;
export const START_HIGH = NUM_BARS / 2 + 1;
// Lowest value of low and high
export const LOW_MIN = HISTO_STEP - OFFSET;
export const HIGH_MIN = 50 + LOW_MIN;
// Where low and high are by default
export const LOW_START_POS = HISTO_STEP * START_LOW - OFFSET;
export const HIGH_START_POS = HISTO_STEP * START_HIGH - OFFSET;
// Default mic volume threshold
export const START_VOLUME = 50;
export const binFreqRange = 48000 / FFT_SIZE;
