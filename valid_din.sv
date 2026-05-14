class valid_din extends uvm_sequence#(transaction);
  
  `uvm_object_utils(valid_din)
  
  transaction t;
  
  function new(input string inst="valid_din");
     super.new(inst);
    endfunction
  
  virtual task body();
   
    repeat (10)
      begin
         t=transaction::type_id::create("t");
        start_item(t);
        t.randomize();
        t.rst=1'b0;
        `uvm_info("SEQ",$sformatf("rst:%0d, din:%0d dout:%od",t.rst,t.din,t.dout),UVM_NONE);
        finish_item(t);
      end
  endtask
endclass
