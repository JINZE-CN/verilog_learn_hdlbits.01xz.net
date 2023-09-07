/////////////////////////以下是学到的/////////////////////////
// Status: Incorrect
// Compile and simulation succeeded, but the circuit's output wasn't entirely correct. The hints below may help.

// # Hint: No cheating: You must connect the provided module mod_a.
// # Hint: Output 'out' has 149 mismatches. First mismatch occurred at time 645.
// # Hint: Total mismatched samples is 149 out of 526 samples

//使用module 用 verilog-testbench 插件的 instantiate module 函数导入


/////////////////////////以下是我写的/////////////////////////
//错误的
module top_module ( input a, input b, output out );
assign out=a|!b;
endmodule


/////////////////////////以下是系统的/////////////////////////
// module top_module (
// 	input a,
// 	input b,
// 	output out
// );

// 	// Create an instance of "mod_a" named "inst1", and connect ports by name:
// 	mod_a inst1 ( 
// 		.in1(a), 	// Port"in1"connects to wire "a"
// 		.in2(b),	// Port "in2" connects to wire "b"
// 		.out(out)	// Port "out" connects to wire "out" 
// 				// (Note: mod_a's port "out" is not related to top_module's wire "out". 
// 				// It is simply coincidence that they have the same name)
// 	);

// /*
// 	// Create an instance of "mod_a" named "inst2", and connect ports by position:
// 	mod_a inst2 ( a, b, out );	// The three wires are connected to ports in1, in2, and out, respectively.
// */
	
// endmodule
