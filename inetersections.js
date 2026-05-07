/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[]}
 */
var intersection = function(nums1, nums2) {
    const a = new Set(nums1);
    const intersecs = new Set();
    for(const num of nums2){
        if(a.has(num)){
            intersecs.add(num);
        }
    }
    return Array.from(intersecs);
};
