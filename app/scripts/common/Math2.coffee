###*
* @module common
* @author Matt Crinklaw
*###
define(
	###*
	* Provides mathematical functions that one would expect to be in
	* Math
	* @class common.Math2
	*###

	###*
	* Rounds a number to the specified decimal place
	* e.g., Math2.round(5.232, 2) will return 5.23
	* @method round
	* @param {Number} num Number to be rounded
	* @param {Integer} [dec] Number of decimal places to keep.  Defaults to 0.
	* @returns {Number} rounder number
	*###
	round: (num, dec) ->
		dec? or (dec = 0)
		factor = Math.pow(10, dec)
		Math.round(num * factor) / factor

	###*
	* Converts radians to degrees
	* @method toDeg
	* @param {Number} rads angle in radians
	* @returns {Number} angle in degrees
	*###
	toDeg: (rads) ->
		rads * 180 / Math.PI

	###*
	* Converts degrees to radians
	* @method toRads
	* @param {Number} deg Angle in degrees
	* @returns {Number} Angle in radians
	*###
	toRads: (deg) ->
		deg * Math.PI / 180

	###*
	* Checks to see if two numbers are withing thresh of one another
	* e.g., Math2.compare(1.5, 1.1, 0.5) would return true since 1.5 is 0.4 away from 1.1
	* @method compare
	* @param {Number} v1 Left hand value
	* @param {Number} v2 Right hand value
	* @param {Number} thresh Threshold for equality
	*###
	compare: (v1, v2, thresh) ->
		Math.abs(v1 - v2) < thresh

	###*
	* Rotates the given point by rot radians
	* @method rotatePt
	* @param {Object} pt Point to rotate
	*	@param {Number} pt.x x coordinate
	*	@param {Number} pt.y y coordinate
	* @param {Number} rot Angle in radians to rotate pt by
	* @returns {Object} rotated point
	*###
	rotatePt: (pt, rot) ->
		if rot < 0
			newPt =
				x: pt.x * Math.cos(rot) + pt.y * Math.sin(rot)
				y: -1 * pt.x * Math.sin(rot) + pt.y * Math.cos(rot)
		else
			newPt =
				x: pt.x * Math.cos(rot) - pt.y * Math.sin(rot)
				y: pt.x * Math.sin(rot) + pt.y * Math.cos(rot)

	###*
	* Same as rotatePt but expects left and top instead of x and y
	* @method rotatePtE
	*###
	rotatePtE: (pt, rot) ->
		if rot < 0
			newPt =
				left: pt.left * Math.cos(rot) + pt.top * Math.sin(rot)
				top: -1 * pt.left * Math.sin(rot) + pt.top * Math.cos(rot)
		else
			newPt =
				left: pt.left * Math.cos(rot) - pt.top * Math.sin(rot)
				top: pt.left * Math.sin(rot) + pt.top * Math.cos(rot)
)