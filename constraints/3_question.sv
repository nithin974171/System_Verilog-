//palindrom for numbers
class child;
  rand int a[10];
  constraint x1{
    foreach(a[i]) {
      a[i] inside {[10:100]};
      if(i>0 && i<a.size/2)
        
      	a[i] == a[i-1] + 1;
      if(i < a.size/2)
        a[i] == a[a.size-1-i];
    }
  }
endclass

      
module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("h1.a = %0p",h1.a);
  end
endmodule

//palindrom for 3 digit number

class child;
  rand int a;

  constraint x1{
    a inside {[100:999]};
    a/100 == a%10;
  }
endclass

module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("h1.a = %0p",h1.a);
  end
endmodule

//palindrom for string value
class child;
  rand byte str[];
  string s;

  constraint x1{
    str.size() == 7;
    foreach(str[i]) str[i] inside {[97:122]};
  }

  constraint x2{
    foreach(str[i]){
      if(i<str.size/2){
        str[i] == str[str.size-1-i];
      }
    }
  }

function void post_randomize();
  s = "";
      foreach(str[i]) begin
        s = {s,str[i]};
      end
endfunction
endclass

module tb;
  child h1 = new();
  initial begin
    h1.randomize();
    $display("h1.s = %0s",h1.s);
  end
endmodule
