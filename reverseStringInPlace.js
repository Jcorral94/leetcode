var reverseString = function (s) {
  let pointerA = 0;
  let pointerB = s.length - 1;

  while (pointerA < pointerB) {
    swap(s, pointerA, pointerB);
    pointerA++;
    pointerB--;

  }
  function swap(array, a, b) {
    [array[a], array[b]] = [array[b], array[a]];
  }
};
