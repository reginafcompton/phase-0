
var median = function (array) {

  function ascending_order (a, b) {
    return a - b;
  }
  var sortedArray = array.sort(ascending_order);
  var lengthArray = sortedArray.length;
  console.log(lengthArray)
  console.log(sortedArray)

  if (lengthArray % 2 === 0) {
      var value = lengthArray / 2;
      console.log(sortedArray[value]);
      console.log(sortedArray[value - 1]);
    }
  else {
      var value = (lengthArray / 2) - 0.5;
      console.log(sortedArray[value]);
    }
};

median([1, 4, 2, 77, 3, 88, 0, 100, 50, 25, 11, 15])



var sum = function(array) {
    var sumTotal = 0;
    for (var x in array) {
      sumTotal += array[x];
    }
    console.log(sumTotal);
};

sum([1, 4, 2, 15])



var mean = function(array) {
  var sumTotal = 0;
    for (var x in array) {
      sumTotal += array[x];
    }
  console.log(sumTotal);

  var lengthArray = array.length;
  console.log(lengthArray)

  var x = sumTotal / lengthArray;
  console.log(x);
};

mean([1, 4, 3])