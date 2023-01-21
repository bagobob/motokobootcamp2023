# <a id="questions"> 🙋 Questions </a>

## 1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
When we upgrade a canister, the memory iks lost and the state of the variables change.
To save the state of a variable, we must declare this variable as a stable.

## 2. How much accounts can a unique Principal own?
A unique principal can own almost unlimited accounts.


## 3. Can we safely upgrade a canister from interface A to interface B?
In the Interface A we have two parameters in the function,
but one in the function of the interface B. Then the upgrade will bring some change 
between the two interface.