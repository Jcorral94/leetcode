/**
 * @param {number} n
 * @param {number} m
 * @return {number}
 */
var differenceOfSums = function(n, m) {
    const a = Array.from({ length: n }, (_, i) => i + 1);
    return a.reduce((sum, val) => {
        if(val % m !== 0){
            sum += val;
        } else {
            sum -= val;
        }
        return sum;
    }, 0)
};
