/**
 * @param {string} s
 * @return {number}
 */
var scoreOfString = function(s) {
    let sum = 0;
    for(let i = 1; i < s.length; i++){
        const a = s.charCodeAt(i-1);
        const b = s.charCodeAt(i);
        sum += Math.abs(a-b);
    }
    return sum;
};
