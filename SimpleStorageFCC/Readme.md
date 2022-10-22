__Primitive data  types__
1. boolean,
2. uint,
3. int, 
4.  address, 
5.  bytes,
6.  string (array of bytes)

**Functions, methods**
	Function keyword
	
**Array, struct, mapping**
	
**Smart contracts have addresses just like our walled accounts do**

**View, pure**
- View function - cannot update anything; does not modify the state of the blockchain; only read the state 
- Pure function - cannot update anything; does not allow to modify the state of the blockchain; cannot read the state as well
	
**EVM overview**

EVM can access and store information in six places
1. Stack
2. Memory
3. Storage
4. Calldata
5. Code
6. Logs
		
- Memory, calldata - saved temporary within the function scope; 
- Calldata - cannot modify the variable inside the function
- Storage - saved globally; can be used within the function and outside the function

**Inheritance**

- Import the parent class
- Contract name with the 'is' keyword
  - ExtraStorage is SimpleStorage
- Overriding a method in parent class
  - Virtual - add virtual keyword in the method of parent class
  - Override - add override keyword in the method of child class
