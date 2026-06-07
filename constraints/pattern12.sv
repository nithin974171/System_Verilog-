class packet;//01002000300004000005
    rand int num;
    int q[$];
    constraint c1 {
        num == 5;
    }

    function void post_randomize();
        for(int i = 1; i <= num; i++) begin
            repeat(i) q.push_back(0);
            q.push_back(i);
        end
    endfunction
endclass
