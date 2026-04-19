/**
 * @param {number} n
 * @return {boolean}
 */
var isHappy = function(n) {
    const seen = new Set();

    while(n !== 1 && !seen.has(n)){
        seen.add(n);

        n = n.toString().split('');

        let sum = 0;

        for(const num of n){
            sum += num ** 2;
        }
        n = sum;
    } 

    return n === 1;
};
