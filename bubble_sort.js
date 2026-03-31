/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
var sortColors = function(nums) {

    function swap(i, j, nums){
        [nums[i], nums[j]] = [nums[j], nums[i]];
    }
    for(let i = 0; i < nums.length; i++){
        for(let j = 0; j < nums.length-i-1; j++){
            const a = nums[j];
            const b = nums[j+1];

            if(a > b){
                swap(j, j+1, nums);
            }
        }
    }

    return nums;
};
