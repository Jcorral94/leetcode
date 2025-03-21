const S = readline();

const A = S.split('').map((v) => {
    if(v.toLowerCase() == v){
        return v.toUpperCase();
    } else {
        return v.toLowerCase();
    }
}).join('').replace(/[^a-zA-Z0-9 ]/g, '');

console.log(A);
