class rst_dff extends uvm_sequence#(transaction);
  
  `uvm_object_utils(rst_dff)
  
  transaction t;
  
  function new(input string inst="rst_dff");
     super.new(inst);
    endfunction
  
  virtual task body();
   
    repeat (10)
      begin
         t=transaction::type_id::create("t");
        start_item(t);
        t.randomize();
        t.rst=1'b1;
        `uvm_info("SEQ",$sformatf("rst:%0b, din:%0b dout:%0b",t.rst,t.din,t.dout),UVM_NONE);
        finish_item(t);
      end
  endtask
  
  
endclass
