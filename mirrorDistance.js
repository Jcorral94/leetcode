/**
 * @param {number} n
 * @return {number}
 */
var mirrorDistance = function(n) {
    return Math.abs(n - reverse(n));
};

function reverse(n){
    return Number(n.toString().split('').reverse().join(''));
}
