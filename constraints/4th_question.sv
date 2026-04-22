// randomize the four variable a,b,c,d  such that
// -> if a>50 b should be odd and c should be divisible by 7
//  -> if b is even -> a should be less then 30 and  d should be prefect square c c+d = a*2;

class child;
  rand int a,b,c,d;
  constraint x1{
   a>50 -> b%2 == 1;
   a>50 -> c%7 == 0;
  }
  
  constraint x1_2{
  	b%2 == 0 -> a<30;
    b%2 == 0 -> (d inside {0,1,4,9,16,25,36,49});
  }
endclass

module tb;
  child h1 = new();
  initial begin
    repeat(1) begin
    h1.randomize();
    $display("h1.a = %0d \n h1.b = %0d \n h1.c = %0d \n h1.d = %0d",h1.a,h1.b,h1.c,h1.d);
    end
  end
endmodule
  end
endmodule
