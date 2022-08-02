/**
 * @param {number[][]} matrix
 * @param {number} k
 * @return {number}
 * http://www.cse.yorku.ca/~andy/pubs/X+Y.pdf
 */
var kthSmallest = function(matrix, k) {
    const a = [];
    matrix.forEach(array =>{
       a.push(...array); 
    });
    a.sort((a, b)=> a-b);
    return a[k-1];
};
