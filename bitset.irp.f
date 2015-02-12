program bitset
        implicit none
        integer(4)::i
        integer::j,countbit,add,tmp,tmp2
        
        add=0
        do i=1,10000
        if(popcnt(i).eq.2)then
        if(BTEST(i,0))then
            write(6,15)i,i,i-(2**(popcnt(XOR(i,i-1))-1))
            tmp=i-(2**(popcnt(XOR(i,i-1))-1))
            tmp2=popcnt(XOR(tmp,tmp-1))-1
            print *,2**(tmp2-1)+popcnt(XOR(i,i-1))-1
            write(11,14)i,i
        endif
        endif
        enddo



10  FORMAT(B64,I8,F8.2)
15  FORMAT(B64,I8,I8,I8)
11  FORMAT(B64,I3,B64)
12  FORMAT(I5,$)
13  FORMAT(B64,B64)
14  FORMAT(B64,I8)
end
