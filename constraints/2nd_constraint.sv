//3,7,9,11,15,18

class child;
  rand int a[];
  constraint x1{
    a.size inside {[10:20]};
    foreach(a[i]) {
      a[i] == (i*4)+3;
    }
  }
endclass

      module tb;
        child h1 = new();
        initial begin
          h1.randomize();
          $display("a:%0d",h1.a);
        end
      endmodule
