import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {
    public func say(name: Text) : async Text {
        return name
    };

    // A Function to generate the multiplication table
    public func multiplicationTable(_value1: Int, _value2: Int) : async Text {
        var tableText = "Multiplication Table:\n";

        for (i in Iter.range(0, _value2)) {
            let _result = _value1 * i;
            tableText := tableText # Int.toText(_value1) # " * " # Int.toText(i) # " = " # Int.toText(_result) # "\n";
        };

        return tableText;
    };
};