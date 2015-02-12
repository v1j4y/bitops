program bitset
        implicit none
        integer(4)::i
        integer::j,countbit,tmp,tmp2
        integer,allocatable::add(:,:)
        allocate(add(100,100))
        countbit=0
        do i=1,100
        if(popcnt(i).eq.3)then
            countbit+=1
            add(countbit,1)=countbit
            add(countbit,2)=i
            write(6,16)add(countbit,2),add(countbit,1),add(countbit,2)
        endif
        enddo



10  FORMAT(B64,I8,F8.2)
15  FORMAT(B64,I8,I8,I8)
11  FORMAT(B64,I3,B64)
12  FORMAT(I5,$)
13  FORMAT(B64,B64)
14  FORMAT(B64,I8)
16  FORMAT(B64,I8,I8)
end
