
// find the average of the array of numbers by(MEAN):
  // divide total sum variable above by the length of the array variable created above
    // output: return results, which is a single number (that can have decimal points)

var median = function (array) {

  function ascending_order (a, b) {
    return a - b;
  }
  var sortedArray = array.sort(ascending_order);
  var lengthArray = sortedArray.length;

  if (lengthArray % 2 === 0) {
      var value = lengthArray / 2;
      return sortedArray[value];
      return sortedArray[value - 1];
    }
  else {
      var value = (lengthArray / 2) - 0.5;
      return sortedArray[value];
    }
};

median([1, 4, 2, 77, 3, 88, 0, 100, 50, 25, 11, 15])


var sum = function(array) {
    var sumTotal = 0;
    for (var x in array) {
      sumTotal += array[x];
    }
    console.log(sumTotal)
};

sum([1, 4, 2, 15])


var mean = function(array) {

}