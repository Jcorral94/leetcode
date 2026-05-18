/**
 * @param {string[]} sentences
 * @return {number}
 */
var mostWordsFound = function(sentences) {
    let max = 0;
    for(const sentence of sentences){
        const {length} = sentence.split(' ');
        if(length > max){
            max = length;
        }
    }
    return max;
};
