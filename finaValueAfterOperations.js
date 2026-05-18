/**
 * @param {string[]} operations
 * @return {number}
 */
var finalValueAfterOperations = function(operations) {
    let x = 0;
  
    const a = {
        '--X': () => x--,
        'X--': () => x--,
        'X++': () => x++,
        '++X': () => x++,
    };

    for(const operation of operations){
        a[operation]();
    }
  
    return x;
};
