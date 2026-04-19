/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
    const tracker = new Set();
    for(let i = 0; i < nums.length; i++){
        if(tracker.has(nums[i])) return true;
        tracker.add(nums[i]);
    }
    return false;
};
