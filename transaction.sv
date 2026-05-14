class transaction extends uvm_sequence_item;
    
    rand bit rst;
    rand bit din;
    bit dout;
    
    function new(input string inst="transaction");
      super.new(inst);
    endfunction
    
    `uvm_object_utils_begin(transaction)
    `uvm_field_int(rst,UVM_DEFAULT)
    `uvm_field_int(din,UVM_DEFAULT)
    `uvm_field_int(dout,UVM_DEFAULT)
     `uvm_object_utils_end
    
  endclass
