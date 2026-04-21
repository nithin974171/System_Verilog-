//1111000011110000
class child;
  bit [31:0]a;
  constraint x1{
    foreach(a[i]){
      if(i%4==0 && i>0) a[i] == ~a[i-1];
      else a[i] == a[i-1];
    }
  }
endclass

module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("h1.a = %b",h1.a);
  end
endmodule

 //111000111000111

class child;
  rand bit [31:0]a;
  constraint x1{
    foreach(a[i]){
      if(i%3==0 && i>0) a[i] == ~a[i-1];
      else if(i>0) a[i] == a[i-1];
    }
  }
endclass
      

module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("h1.a = %b",h1.a);
  end
endmodule

      
