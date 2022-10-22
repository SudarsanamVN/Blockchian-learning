__Primitive data  types__
	*Boolean, 
	*uint,
	*int, 
	*address, 
	*Bytes,
	*String (array of bytes)

**Functions, methods**
	Function keyword
	
**Array, struct, mapping**
	
**Smart contracts have addresses just like our walled accounts do**

**View, pure**
	View function - cannot update anything; does not modify the state of the blockchain; only read the state 
	Pure function - cannot update anything; does not allow to modify the state of the blockchain; cannot read the state as well
	
**EVM overview**
	EVM can access and store information in six places
			i. Stack
			ii. Memory
			iii. Storage
			iv. Calldata
			v. Code
			vi. Logs
		
	*Memory, calldata - saved temporary within the function scope; 
	*Calldata - cannot modify the variable inside the function
	*Storage - saved globally; can be used within the function and outside the function

**Inheritance **
	Import the parent class
	Contract name with the 'is' keyword
		ExtraStorage is SimpleStorage
	Overriding a method in parent class
		Virtual - add virtual keyword in the method of parent class
		Override - add override keyword in the method of child class
