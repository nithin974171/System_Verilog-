// asc first order and second half desc

class child;
  rand int a[];
  
  constraint x1 {
    a.size inside {[21:23]};
    foreach(a[i]) {
      a[i] inside {[10:100]};
      if(i<a.size()/2-1) a[i] < a[i+1];
      else if(i>a.size()/2 && i < a.size() - 2) a[i] > a[i+1];  
    }
  }
endclass

module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("a = %0p \n size = %0d",h1.a,h1.a.size());
  end
endmodule
