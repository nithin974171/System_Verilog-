module tb;
  int a;
  
  task automatic a_t(int a,string s);
  	#5;
    a = 2+a;
    $display($time,"s=%0s a= %0d",s,a);
  endtask
  
   task s_t(int a,string s);
  	#5;
    a = 2+a;
    $display($time,"s=%0s a= %0d",s,a);
  endtask
  
/*  initial 
  	fork
      	begin
          a_t(5,"1st thread : ");
        end
      	begin
          #2;
          a_t(5,"2nd thread : ");
        end
    join*/
  
  initial 
  	fork
      	begin
          s_t(5,"1st thread : ");
        end
      	begin
          s_t(5,"2nd thread : ");
        end
    join
endmodule
