/**
 * @param {number} n
 * @return {string[]}
 */
var fizzBuzz = function(n) {
    return Array.from({ length: n }, (_, i) => {
        let num = i + 1;
        if(num % 3 === 0 && num % 5 === 0){
            return 'FizzBuzz';
        } else if(num % 3 === 0){
            return 'Fizz';
        } else if(num % 5 === 0){
            return 'Buzz';
        } else {
            return num.toString();
        }
    });
};
