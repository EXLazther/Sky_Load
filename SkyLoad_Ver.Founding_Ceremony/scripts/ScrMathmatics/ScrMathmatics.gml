enum INTERPOLATION_TYPE 
{
	LERP,
	EASEIN,
	EASEOUT,
	EASEINOUT,
	EXPONENTIAL,
	SIN
}

function sindeg(_degree){ //Degreeでsinを取得
	
	var _sin = sin(degtorad(_degree));
	return _sin	
}

function cosdeg(_degree){ //Degreeでcosを取得
	var _cos = cos(degtorad(_degree));
	return _cos
}