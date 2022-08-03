var MyCalendar = function() {
    this.bookedTimes = [];
};

/** 
 * @param {number} start 
 * @param {number} end
 * @return {boolean}
 */
MyCalendar.prototype.book = function(start, end) {
    const len = this.bookedTimes.length;
    
    for(let i = 0; i < len; i++){
        const [s, e] = this.bookedTimes[i];
        if(s < end && start < e){
            return false;
        }
    }
	this.bookedTimes.push([start, end]);
    return true;
	
};

