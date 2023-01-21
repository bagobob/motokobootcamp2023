# <a id="questions"> 🙋 Questions </a>

## 1. Who controls the ledger canister?
The ledger canister is a component of the NNS and the NNS is governed by a liquid democracy in which ICP holders stake their ICPs to create neurons. So the ledger canister is controlled by the group of ICPs holders.


## 2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
The subnet of the canister with the id :  mwrha-maaaa-aaaab-qabqq-cai is pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe.
There are 16 nodes running in this subnet. [source](https://dashboard.internetcomputer.org/canister/mwrha-maaaa-aaaab-qabqq-cai)

## 3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
The expected voting power is 10


## 4. What's wrong with the following code? 
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```

In this code we expected the import of Nat, because we can use a function of a module without importing the module from the base library : `import Nat "mo:base/Nat"`

## 5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
In the first place for the declaration of the mutable array `languages`, we must put the keyword `var` in both the expression and the type forms:
`var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];`
But the language Motoko forbid the uses of mutable aray across asynchronous communication where mutable state is never shared Then we have to change the state of the array to immutable The correct code is the following : 
```
let languages : [ Text] = [ "English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [ Text] {
    return (languages);
  };
```

## 6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
We must import the module Array from the base library: `import Array "mo:base/Array";`