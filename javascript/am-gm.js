// arithmetic progression a sequence of numbers in which each differs from the preceding one by a constant quantity (e.g. 1, 2, 3, 4, etc.; 9, 7, 5, 3, etc.).

//geometric sequence, is a sequence of numbers where each term after the first is found by multiplying the previous one by a fixed, non-zero number called the common ratio.


var arithmetic = [5, 11, 17, 23, 29, 35, 41] ;
var geometric = [2, 6, 18, 54, 162];

function aritGeo(arr){
	var ans
	len = arr.length 
	if (len === 0) return 0
	ari = arr[1] - arr[0]
	geo = arr[1]/ arr[0]
	for(i=0; i <= len; i++){
		if (arr[i] == arr[arr.length - 1]) break;
		if ((arr[i + 1] - arr[i]) === ari ) ans =  "Arithmetic"
		else if (arr[i + 1] / arr[i] === geo ) ans =  "Geometric"
		else ans =  -1
	}
	return ans
}

aritGeo(arithmetic)




